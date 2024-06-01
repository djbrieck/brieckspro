---
title: "Print Sql From Java String"
date: 2024-06-01T09:29:21-07:00
draft: true
---
This post is for you if you're looking at a wall of Native SQL formatted and embedded in a java string, and you're trying to get that code back into a SQL editor. 

For example, something like this query: ([Query below from Baeldung example](https://www.baeldung.com/spring-data-jpa-query))

    @Query(value = "SELECT c.*, o.*, p.* "
    + " from Customer c, CustomerOrder o ,Product p "
    + " where c.id=o.customer_id "
    + " and o.id=p.customerOrder_id "
    + " and c.id=?1 "
      , nativeQuery = true)
      List<Map<String, Object>> findByCustomer(Long id);

1. Copy the string
