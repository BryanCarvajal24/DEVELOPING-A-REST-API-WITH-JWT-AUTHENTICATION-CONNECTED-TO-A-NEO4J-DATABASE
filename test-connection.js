import neo4j from 'neo4j-driver';
import dotenv from 'dotenv';

dotenv.config();

const testConnection = async () => {
    const URI = process.env.NEO4J_URI;
    const USER = process.env.NEO4J_USER;
    const PASSWORD = process.env.NEO4J_PASSWORD;

    console.log('Intentando conectar con:');
    console.log('URI:', URI);
    console.log('Usuario:', USER);
    console.log('¿Contraseña presente?:', !!PASSWORD);

    const driver = neo4j.driver(
        URI,
        neo4j.auth.basic(USER, PASSWORD)
    );

    try {
        const serverInfo = await driver.getServerInfo();
        console.log('\nConexión exitosa!');
        console.log('Información del servidor:', serverInfo);
    } catch (error) {
        console.log('\nError de conexión:');
        console.log(error.message);
        if (error.code) {
            console.log('Código de error:', error.code);
        }
    } finally {
        await driver.close();
    }
};

testConnection();