#!/bin/bash

# Create the file
touch /usr/local/bin/crearkey

# Add the code to the file
echo "#!/bin/bash

echo "Ingresa el nombre del archivo keystore (sin la extensión .jks):"
read varnombre

echo "Ingresa el alias a utilizar:"
read varalias

echo "Ingresa la contraseña:"
read varpassword

keytool -genkey -v -keystore $varnombre.jks -alias $varalias -keyalg RSA -keysize 2048 -validity 365 -storepass $varpassword" > /usr/local/bin/crearkey

# Make the file executable
chmod +x /usr/local/bin/crearkey
