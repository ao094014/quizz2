all: college

college:	college.o course.o collegemain.o
		g++ college.o course.o collegemain.o -o college
		
collegemain.o: collegemain.cc course.h college.h
		g++ -c collegemain.cc course.h college.h
		
college.o: college.cc college.h
			g++ -c college.cc college.h
			
course.o:	course.cc course.h
		g++ -c course.cc course.h

doc:
	doxygen collegemain.cc course.h course.cc node.h tarray.h college.h college.cc 
		
archive: 
		tar -cvzf quiz.tar.gz quiz2
		
clean: 
		-rm -rf *o game