# 🎮 Tic-Tac-Toe (Ruby)

A simple command-line **Tic-Tac-Toe** game built in Ruby.  
Play as a human against a computer that makes random moves.

---

## ✨ Features

- Human vs. Computer gameplay
- Interactive CLI with colorized output (`colorize` gem)
- Input validation for player names and tile selection
- Automatic computer move generation
- Win detection across all rows, columns, and diagonals

---

## 📂 Project Structure

```
.
├── main.rb              # Entry point to start the game
└── lib/
    ├── game.rb          # Game logic and flow
    ├── board.rb         # Board representation and game state
    └── players.rb       # Player classes (Human & Computer)
```

---

## 🛠 Installation & Usage

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/tic-tac-toe-ruby.git
   cd tic-tac-toe-ruby
   ```

2. Install dependencies:
   ```bash
   bundle install
   ```
   *(Make sure you have the `colorize` and `pry-byebug` gems installed)*

3. Run the game:
   ```bash
   ruby main.rb
   ```

---

## 🧑‍💻 How to Play

1. Enter your name.
2. Choose your piece (`X` or `O`).
3. Take turns placing your piece on the board.
4. The computer will make random moves.
5. The game ends when a player wins or when no tiles remain.

---

## 📜 Example Game Flow

```
Welcome to Tic-Tac-Toe!
Please enter your name:
> Alice
Please choose between X and O.
> X
Alice chooses X

Choose where to place within these tiles ["a1", "a2", "a3", ...]
> a1
Alice's turn
[X][ ][ ]
[ ][ ][ ]
[ ][ ][ ]

Computer's turn
[X][ ][ ]
[ ][O][ ]
[ ][ ][ ]
```

---

## 📚 Concepts Practiced

- Object-Oriented Programming (OOP)
- Class composition (`Game`, `Board`, `Players`)
- User input handling
- Conditional logic for win detection
- Randomized computer moves

---

## 📄 License

This project is licensed for **educational purposes only**.  
You may use, modify, and share it for learning or personal projects.  
Commercial use requires explicit permission.

---

Made with 💎 Ruby for learning and fun!
