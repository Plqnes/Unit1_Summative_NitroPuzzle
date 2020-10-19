class Piece
{
  Piece(int _PieceNumber, int _x, int _y)
  {
    PieceNumber = _PieceNumber;
    x = _x;
    y = _y;
  }


  int x = 100;
  int y = 100;
  int PieceNumber;

  void draw()
  {
    rect(x, y, 75, 75);

    if (PieceNumber == 0)
    {
      image(Nitro, x, y);
    }
    if (PieceNumber == 2)
    {
      image(Nitro, x, y);
    }
    if (PieceNumber == 3)
    {
      image(Nitro, x, y);
    }
    if (PieceNumber == 4)
    {
      image(NitroIM, x, y);
    }
  }
}
