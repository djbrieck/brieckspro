---
title: "Print SQL From Java String"
date: 2024-06-01T09:29:21-07:00
draft: false
---
This post is for you
if you are looking at a wall of Native [SQL](https://en.wikipedia.org/wiki/SQL)
formatted and embedded into many [Java strings](https://www.w3schools.com/java/java_strings.asp) ,
and you're trying to get out just the SQL. 

For example, something like this query: ([Query below from Baeldung example](https://www.baeldung.com/spring-data-jpa-query))

    @Query(value = "SELECT c.*, o.*, p.* "
    + " from Customer c, CustomerOrder o ,Product p "
    + " where c.id=o.customer_id "
    + " and o.id=p.customerOrder_id "
    + " and c.id=?1 "
      , nativeQuery = true)
      List<Map<String, Object>> findByCustomer(Long id);

1. Copy the SQL string
    
`"SELECT c.*, o.*, p.* " + " from Customer c, CustomerOrder o ,Product p " + " where c.id=o.customer_id "
    + " and o.id=p.customerOrder_id " + " and c.id=?1 " `

2. Paste it into a basic hello world program. Substituting any parameters with actual values.

        public class Main {
            public static void main(String[] args) {
                System.out.println("Hello world!");
            }
        }

Changing it To something like the following but with the SQL strings replacing the original hello world string.

            public class Main {
                public static void main(String[] args) {
                    System.out.println("SELECT c.*, o.*, p.* " + " from Customer c, CustomerOrder o ,Product p " + " where c.id=o.customer_id "
                    + " and o.id=p.customerOrder_id " + " and c.id=1234");
                }
            }

3. Run the program then copy SQL statement from the output.
     
        SELECT c.*, o.*, p.*  from Customer c, CustomerOrder o ,Product p  where c.id=o.customer_id  and o.id=p.customerOrder_id  and c.id=1234

        Process finished with exit code 0


   
