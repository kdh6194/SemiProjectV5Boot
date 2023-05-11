package honeybee.project.semiprojectv5.service;

import honeybee.project.semiprojectv5.model.Board;

import java.util.List;

public interface BoardService {
    List<Board> showBoard(int cpage);
    List<Board> showBoard(int cpage,String ftype, String fkey);
    int countBoard();
    int countBoard(String ftype, String fkey);
    boolean newBoard(Board b);
    Board readOneBoard(String bno);
}
