
package Interface;

import Models.Horarios;
import java.util.ArrayList;

/**
 *
 * @author LEO
 */
public interface IHorario {
    public abstract ArrayList<Horarios> listHorarios();
    public abstract boolean insertHorarios(Horarios horario);
    public abstract boolean updateHorarios(Horarios horario);
    public abstract boolean deleteHorarios(int idHorario);
}
