1. What is PostgreSQL?
   PostgreSQL হলো একটি শক্তিশালী, ওপেন-সোর্স রিলেশনাল ডাটাবেস ম্যানেজমেন্ট সিস্টেম (RDBMS)। এটি ডাটা স্টোর, ম্যানেজ এবং রিট্রিভ করার জন্য ব্যবহৃত হয়। এর বিশেষত্ব হলো এটি SQL স্ট্যান্ডার্ড ফলো করে এবং JSON, XML এর মতো অ্যাডভান্সড ফিচার সাপোর্ট করে।

2. What is the purpose of a database schema in PostgreSQL?
   ডাটাবেস স্কিমা হলো ডাটাবেসের একটি লজিক্যাল স্ট্রাকচার, যা টেবিল, ভিউ, ইনডেক্স ইত্যাদি সংগঠিত করে। এটি ডাটাকে গ্রুপ করে এবং নামস্পেস হিসেবে কাজ করে, যাতে একই নামের টেবিল বিভিন্ন স্কিমায় থাকতে পারে।

   Example:
   -- Create a schema and a table inside it
   CREATE SCHEMA shop;
   CREATE TABLE shop.products (
   product_id SERIAL PRIMARY KEY,
   name VARCHAR(50)
   );

3. Explain the Primary Key and Foreign Key concepts in PostgreSQL
   Primary Key: এটি একটি টেবিলের প্রতিটি রো-কে ইউনিকভাবে চিহ্নিত করে। এটি কখনো নাল (NULL) হতে পারে না এবং ডুপ্লিকেট মানও থাকতে পারে না।Foreign Key: এটি একটি টেবিলের কলাম যা অন্য টেবিলের প্রাইমারি কী-এর সাথে সম্পর্ক স্থাপন করে। এটি ডাটা ইন্টেগ্রিটি বজায় রাখে।

   Example:
   -- Primary Key
   CREATE TABLE orders (
   order_id SERIAL PRIMARY KEY,
   order_date DATE
   );

  -- Foreign Key
  CREATE TABLE order_details (
  detail_id SERIAL PRIMARY KEY,
  order_id INT REFERENCES orders(order_id)
  );

4. How can you modify data using UPDATE statements?
   UPDATE স্টেটমেন্ট দিয়ে টেবিলের ডাটা মডিফাই করা যায়। এটি নির্দিষ্ট কলামের মান আপডেট করে, যেখানে WHERE ক্লজ দিয়ে কোন রো-গুলো আপডেট করতে হবে তা নির্ধারণ করা হয়।

5. What is the significance of the JOIN operation, and how does it work in PostgreSQL?
   JOIN অপারেশন দুই বা তার বেশি টেবিলের ডাটাকে সম্পর্কের ভিত্তিতে একত্রিত করে। এটি রিলেশনাল ডাটাবেসে খুবই গুরুত্বপূর্ণ কারণ এটি ডাটা রিট্রিভ করতে সাহায্য করে। PostgreSQL-এ বিভিন্ন ধরনের JOIN আছে, যেমন INNER JOIN, LEFT JOIN, RIGHT JOIN ইত্যাদি।
