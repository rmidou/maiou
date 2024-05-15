c2r5p3% valgrind --tool=helgrind ./philo 5 1000 200 200
==1266738== Helgrind, a thread error detector
==1266738== Copyright (C) 2007-2017, and GNU GPL'd, by OpenWorks LLP et al.
==1266738== Using Valgrind-3.18.1 and LibVEX; rerun with -h for copyright info
==1266738== Command: ./philo 5 1000 200 200
==1266738== 
11 1 has taken a fork
22 1 has taken a fork
23 1 is eating
24 3 has taken a fork
24 3 has taken a fork
24 3 is eating
25 5 has taken a fork
1000 2 died
==1266738== ---Thread-Announcement------------------------------------------
==1266738== 
==1266738== Thread #5 was created
==1266738==    at 0x499D9F3: clone (clone.S:76)
==1266738==    by 0x499E8EE: __clone_internal (clone-internal.c:83)
==1266738==    by 0x490C6D8: create_thread (pthread_create.c:295)
==1266738==    by 0x490D1FF: pthread_create@@GLIBC_2.34 (pthread_create.c:828)
==1266738==    by 0x4853767: ??? (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x4018ED: init_philo (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401B3D: main (in /home/nbiron/philo/philo/philo)
==1266738== 
==1266738== ----------------------------------------------------------------
==1266738== 
==1266738== Thread #5: lock order "0x4AA4350 before 0x4AA4328" violated
==1266738== 
==1266738== Observed (incorrect) order is: acquisition of lock at 0x4AA4328
==1266738==    at 0x4850CCF: ??? (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x401B78: take_forks (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401DBB: eat (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401F21: routine (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x485396A: ??? (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x490CAC2: start_thread (pthread_create.c:442)
==1266738==    by 0x499DA03: clone (clone.S:100)
==1266738== 
==1266738==  followed by a later acquisition of lock at 0x4AA4350
==1266738==    at 0x4850CCF: ??? (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x401C00: take_forks (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401DBB: eat (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401F21: routine (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x485396A: ??? (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x490CAC2: start_thread (pthread_create.c:442)
==1266738==    by 0x499DA03: clone (clone.S:100)
==1266738== 
==1266738==  Lock at 0x4AA4350 was first observed
==1266738==    at 0x4854BFE: pthread_mutex_init (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x40184D: create_mutex (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x40189B: init_philo (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401B3D: main (in /home/nbiron/philo/philo/philo)
==1266738==  Address 0x4aa4350 is 160 bytes inside a block of size 200 alloc'd
==1266738==    at 0x484A919: malloc (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x40167D: init (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401B34: main (in /home/nbiron/philo/philo/philo)
==1266738==  Block was alloc'd by thread #1
==1266738== 
==1266738==  Lock at 0x4AA4328 was first observed
==1266738==    at 0x4854BFE: pthread_mutex_init (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x40184D: create_mutex (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x40189B: init_philo (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401B3D: main (in /home/nbiron/philo/philo/philo)
==1266738==  Address 0x4aa4328 is 120 bytes inside a block of size 200 alloc'd
==1266738==    at 0x484A919: malloc (in /usr/libexec/valgrind/vgpreload_helgrind-amd64-linux.so)
==1266738==    by 0x40167D: init (in /home/nbiron/philo/philo/philo)
==1266738==    by 0x401B34: main (in /home/nbiron/philo/philo/philo)
==1266738==  Block was alloc'd by thread #1
==1266738== 
==1266738== 
==1266738== 
==1266738== Use --history-level=approx or =none to gain increased speed, at
==1266738== the cost of reduced accuracy of conflicting-access information
==1266738== For lists of detected and suppressed errors, rerun with: -s
==1266738== ERROR SUMMARY: 1 errors from 1 contexts (suppressed: 220766 from 114)
c2r5p3% 

