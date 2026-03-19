# --- BUILD V2 KHONG PHU THUOC REGISTRY ---
# Su dung image local co san lam base, sau do thay app.jar moi duoc build tu Maven tren may.
FROM manhsd2004/javatessty7:latest
WORKDIR /app

# Lay file .jar moi tu thu muc target (can chay: mvnw.cmd package -DskipTests truoc khi docker build)
COPY target/*.jar app.jar

EXPOSE 8080

# Lệnh chạy ứng dụng
ENTRYPOINT ["java", "-jar", "app.jar"]