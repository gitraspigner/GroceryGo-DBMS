/*
 * Author:  DB Nguyen
 * Date:    02/26/2020
 */
import java.io.*;
import java.util.*;


public class Insert_Employees {
    private enum TYPE {Manager,Cashier,Bagger,Stocker}
    private static Map<Integer, String> firstNames, lastNames;
    
    // populate names from txt file lists into given map
    private static void readNames(Map<Integer, String> names, String fileName)
            throws FileNotFoundException {
        File in = new File(fileName);
        if (!in.exists()) {
            throw new FileNotFoundException("Couldn't find the file.");
        }
        Scanner read = new Scanner(in);
        int i = 0;
        while (read.hasNextLine()) {
            String name = read.nextLine();
            names.put(i, name);
            i++;
        }
    }
    
    // writes employee insert statements to output file
    private static void writeInserts(int numEmployees, String fileName)
            throws IOException , FileNotFoundException {
        File output = new File(fileName);
        if (!output.exists()) {
            output.createNewFile();
        }
        PrintStream out = new PrintStream(new FileOutputStream(output));
        Random r = new Random();
        Set<Integer> usedIDs = new HashSet<>();
        
        out.print("INSERT INTO EMPLOYEE VALUES \n");
        for (int j = 0; j < numEmployees; j++) {
            int i;
            
            // get random eID
            int eID;
            do { // create unique eIDs
                eID = r.nextInt(899999) + 100000;
            } while (usedIDs.contains(eID));
            usedIDs.add(eID);
            
            // get random employee type
            TYPE type = randomType(r);
            
            // get random salary
            String salary = randomSalary(50000, r);
            
            // get random first name
            String firstName = randomName(firstNames, r);
            
            // get random last name
            String lastName = randomName(lastNames, r);
            
            String close;
            if (j == numEmployees - 1) {
                close = ")\n";
            } else {
                close = "),\n";
            }
            
            int regNum = r.nextInt(12) + 1;
            int depID = r.nextInt(10) + 1;
            
            /*
             *
             * ADD ATTRIBUTES HERE ONCE THE DATABASE IS IMPLEMENTED
             *
             */
            out.print("\t("
                      + eID + ","
                      + "'" + type + "'" + ","
                      + salary + ","
                      + "'" + firstName + "'" + ","
                      + "'" + lastName + "'" + ","
                      + regNum + ","
                      + depID
                      + close);
        }
        
        out.print(";");
    }
    
    // return random employee type
    private static TYPE randomType(Random r) {
        return TYPE.values()[r.nextInt(TYPE.values().length - 1) + 1];
    }
    
    // return random salary
    private static String randomSalary(int maxSal, Random r) {
        return String.format("%.2f", (r.nextDouble() * 30000));
    }
    
    // return random name
    private static String randomName(Map<Integer, String> names, Random r) {
        return names.get(r.nextInt(names.size()));
    }
    
    public static void main(String[] args)
            throws FileNotFoundException, IOException {
        firstNames = new HashMap<>();
        lastNames = new HashMap<>();
        
        readNames(firstNames, "first_names.txt");
        readNames(lastNames, "last_names.txt");
        
        writeInserts(20, "employee_inserts.sql");
    }
}

