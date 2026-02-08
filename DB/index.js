import neo4j from 'neo4j-driver';
import dotenv from 'dotenv';

dotenv.config();

const NEO4J_URI = process.env.NEO4J_URI || 'bolt://localhost:7687';
const NEO4J_USER = process.env.NEO4J_USER || 'neo4j';
const NEO4J_PASSWORD = process.env.NEO4J_PASSWORD || 'password';

// Crear el driver con gestión de errores
const driver = neo4j.driver(
    NEO4J_URI,
    neo4j.auth.basic(NEO4J_USER, NEO4J_PASSWORD),
    {
        maxTransactionRetryTime: 30000,
        connectionTimeout: 30000,
    }
);

// Verificar la conexión
const verifyConnection = async () => {
    const session = driver.session();
    try {
        await session.run('RETURN 1');
        console.log('Conexión a Neo4j establecida correctamente');
        return true;
    } catch (error) {
        console.error('Error al conectar con Neo4j:', error.message);
        console.log('Verifica que:');
        console.log('1. Neo4j está corriendo');
        console.log('2. Las credenciales son correctas');
        console.log(`3. La URL ${NEO4J_URI} es accesible`);
        console.log('4. El puerto 7687 está abierto');
        throw error;
    } finally {
        await session.close();
    }
};

// Función para obtener una sesión
const getSession = () => {
    const session = driver.session();
    return session;
};

// Inicializar la conexión al importar el módulo
verifyConnection()
    .catch(error => {
        console.error('Error de inicialización:', error.message);
        process.exit(1);
    });

export { getSession, verifyConnection };
export default driver;