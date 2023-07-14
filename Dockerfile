FROM java:8
EXPOSE 8083
ADD target/*.jar /app.jar
RUN bash -c 'touch /app.jar'
CMD ["java","-Dspring.profiles.active=docker","-jar","/app.jar"]