SELECT * from r1;
SELECT * from r2;

-- Projektion PROJ(r1, A, B)
select R1.A, R1.B
    from R1

-- Restriction REST(r1, A=1)
select *
    from R1
    where R1.A=1

-- Produkt PRODUCT(R1, R2)
select *
    from R1, R2

-- Difference, DIFFERENCE(R1, R2)
select R1.A, R1.B, R1.C
    from R1
    except
select R2.A, R2.B, R2.C
    from R2

-- Schnittmenge (Intersection), INTERSECT(R1, R2)
select R1.A, R1.B, R1.C
    from R1
    intersect
select R2.A, R2.B, R2.C
    from R2

-- Vereinigung (Union), UNION(R1, R2)
select R1.A, R1.B, R1.C
    from R1
    union
select R2.A, R2.B, R2.C
    from R2

-- Inner Join, JOIN(R1, R1.A=R2.A, R2)
select *
    from R1 inner join R2
        on R1.A = R2.A

-- Outer left Join, JOIN(R1, R1.A*=R2.A, R2)                                                                                                                                       
select *                                                                        
    from R1 left join R2                                                       
        on R1.A = R2.A

-- Outer rigth Join, JOIN(R1, R1.A*=R2.A, R2)                                                                                                                                       
select *                                                                        
    from R1 right join R2                                                       
        on R1.A = R2.A;

-- Full Outer Join, FULL OUTER JOIN(R1, R1.A=R2.A, R2)                          
select *                                                                        
    from R1 full join R2                                                                                                                                                
        on R1.A = R2.A;   
           