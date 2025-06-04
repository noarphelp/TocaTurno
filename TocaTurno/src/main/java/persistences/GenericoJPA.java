package persistences;

import jakarta.persistence.EntityManager;
import jakarta.persistence.TypedQuery;

import java.util.List;

public class GenericoJPA< T , ID> {

    private Class<T> entityClass = null;

    public GenericoJPA(Class<T> entityClass) {
        this.entityClass = entityClass;
    }

    public void create(T entity) {

        EntityManager em = ConfigJPA.getEntityManager();

        try {
            em.getTransaction().begin();
            em.persist(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            em.close();
        }
    }

    public List<T> findAll() {

        EntityManager em = ConfigJPA.getEntityManager();

        try {
            TypedQuery<T> query = em.createQuery("SELECT e FROM " + entityClass.getSimpleName() + " e ", entityClass);
            return query.getResultList();

        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            em.close();
        }

    }

    public T findById(Long id) {
        EntityManager em = ConfigJPA.getEntityManager();
        try {
            return em.find(entityClass, id);
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            em.close();
        }
    }

    public void edit(T entity) {
        EntityManager em = ConfigJPA.getEntityManager();
        try {
            em.getTransaction().begin();
            em.merge(entity);
            em.getTransaction().commit();
        } catch (Exception e) {
            throw new RuntimeException(e.getMessage());
        } finally {
            em.close();
        }
    }


}
