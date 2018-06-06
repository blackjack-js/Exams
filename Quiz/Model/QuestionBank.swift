//
//  QuestionBank.swift
//  Quiz
//
//  Created by mac on 4/10/18.
//  Copyright © 2018 Devstorm. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var arrayOfSubjects = [[Question]]()
    
    var SAT = [Question]()
    var Mathematics = [Question]()
    var Physics = [Question]()
    var Chemistry = [Question]()
    var Biology = [Question]()
    
    
    init() {
        
        //MARK: - MATH
        
        Mathematics.append(Question(questionText: "Solve for x: 2log x - log (30- 2x) = 1", answers: ["-30", "15", "12", "10"], correctAnswer: 3, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "The equation of a circle is given as x^2 + y^2 – 6x + 4y – 12 = 0, find its center?", answers: ["C(3,2)", "C(-3,2)", "C(-3,-2)", "C(3,-2)"], correctAnswer: 3, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "A stone is dropped into a deep well and is heard to hit the water 3.41 sec after being dropped. Determine the depth of the well.", answers: ["52.3 m", "57 m", "-52.3 m", "-57 m"], correctAnswer: 3, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "A piece of wire is 12 in. long. The wire is cut into two pieces and then each piece is bent into a square. Find the length of the longer piece if the sum of the areas of these two squares is to be 3.5 in^2.", answers: ["7", "6", "5", "4"], correctAnswer: 1, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "What are the radius, r, and height h, of cylindrical oil that can holds 5 liters of oil but must have minimum surface area?", answers: ["R = 9.27cm; h = 18.53cm", "R = 1.26cm; h = 20.83cm", "R = 5.4cm; h = 18.53cm", "R = 15.9cm; h = 12.56cm"], correctAnswer: 0, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "For a given numbers (2, 2, 3, 6, 9), find the standard deviation of sample?", answers: ["1.73", "0.04", "1.14", "2.73"], correctAnswer: 3, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "Enriv wants to make a 100 ml vodka of 5% alcohol solution mixing a quantity of a 2% water solution with 7% alcohol solution. What are the quantities of each of the two solution (2% & 7%) he has to use?", answers: ["25:75", "50:50", "30:70", "40:60"], correctAnswer: 3, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "If x increases uniformly at the rate of 0.01 ft/sec, at what rate is the expression (2 + x )^3 increasing when x becomes 8 feet?", answers: ["2 cfs", "3 cfs", "4 cfs", "5 cfs"], correctAnswer: 1, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "Double my number and subtract 9; then you will get 67. What is my number?", answers: ["25", "38", "37", "27"], correctAnswer: 1, subjectIndex: 0))
        
        Mathematics.append(Question(questionText: "The ratio between the perimeter and the width of a rectangle is 14 : 3. If the area of the rectangle is 108 sq. cm, what is the length of the rectangle?", answers: ["18", "9", "12", "24"], correctAnswer: 2, subjectIndex: 0))
        
         //MARK: - CHEM
        
        Chemistry.append(Question(questionText: "What's the lightest element in the periodic table?", answers: ["Helium", "Hydrogen", "Air", "Neutrons"], correctAnswer: 1, subjectIndex: 1))
        Chemistry.append(Question(questionText: "What is the atomic number of carbon?", answers: ["2", "6", "12", "14"], correctAnswer: 1, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which element in the periodic table was named in honour of physicist Albert Einstein?", answers: ["Albertium", "Relativium", "Physicsium", "Einsteinium"], correctAnswer: 3, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which were the first elements to form after the Big Bang started to cool?", answers: ["Uranium and plutonium", "Carbon and silicon", "Oxygen and nitrogen", "Hydrogen and helium"], correctAnswer: 3, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which of the following is the newest element to be discovered and synthesised?", answers: ["Flerovium", "Ununpentium", "Livermorium", "Ununseptium"], correctAnswer: 3, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which of the following is a noble gas?", answers: ["Nitrogen", "Oxygen", "Argon", "Carbon dioxide"], correctAnswer: 2, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which of the following has the highest pH value?", answers: ["Lime juice", "Wine", "Water", "Caustic soda"], correctAnswer: 3, subjectIndex: 1))
        Chemistry.append(Question(questionText: "What kind of element would you find on the far left-hand side of the periodic table?", answers: ["A metal", "A halogen", "A gas", "A negative ion"], correctAnswer: 0, subjectIndex: 1))
        Chemistry.append(Question(questionText: "Which of the following is not produced if you mix vinegar (an acid) and sodium bicarbonate (an alkali, or base) together?", answers: ["Water", "Salt", "Carbon dioxide", "Air"], correctAnswer: 3, subjectIndex: 1))
        Chemistry.append(Question(questionText: "What are the most common elements in the human body?", answers: ["Phosphorus, nitrogen, calcium", "Sulfur, sodium, magnesium", "Copper, zinc, selenium", "Oxygen, carbon and hydrogen"], correctAnswer: 3, subjectIndex: 1))

        
         //MARK: - PHYSICS
        
        Physics.append(Question(questionText: "Which of the following models accurately describes the view of the solar system first developed by the Greeks?", answers: ["Planets are stationary", "Planets rotate around the sun", "Planets rotate around the earth", "Planets are stationary, but stars rotate"], correctAnswer: 2, subjectIndex: 2))
        
        Physics.append(Question(questionText: "In 1609, Galileo developed the telescope. What did he discover with this tool?", answers: ["He discovered a moon orbiting the planet earth.", "He discovered moons orbiting the planet Jupiter.", "He discovered other stars orbiting our solar system.", "He discovered that the orbit of the planets is elliptical."], correctAnswer: 1, subjectIndex: 2))
        
        Physics.append(Question(questionText: "Which of the following discoveries was one of the most important that was made by William Herschel?", answers: ["He discovered the planet Saturn.", "He found a new comet circling earth.", "He determined the shape of the galaxy.", "He found planets in other solar systems."], correctAnswer: 2, subjectIndex: 2))
        
        Physics.append(Question(questionText: "Which of the following experiments was used to prove Einstein's Theory of General Relativity?", answers: ["Scientists mapped the orbits of nearby solar systems.", "Scientists viewed light bending around a bowling ball.", "Scientists charted the position of stars throughout a year.", "Scientists took photos of stars before and during a solar eclipse."], correctAnswer: 3, subjectIndex: 2))
        
        Physics.append(Question(questionText: "Which of the following interstellar objects was first located by Carl Jansky using radio astronomy?", answers: ["A black hole", "A supernova", "A distant galaxy", "A nearby solar system"], correctAnswer: 0, subjectIndex: 2))
        
        Physics.append(Question(questionText: "How do astronomers find planets in other solar systems?", answers: ["They can directly observe them with a telescope.", "They monitor the pattern of movement and light from a star.", "They chart the curvature of space as light bends around a star.", "They predict the acceleration of nearby stars in relation to the planet."], correctAnswer: 1, subjectIndex: 2))
        
        Physics.append(Question(questionText: "What event leads to the formation of a red giant?", answers: ["Expanding outer layers", "A contracting core of helium", "Hydrogen shell burning", "All of the above None of the above"], correctAnswer: 3, subjectIndex: 2))
        
        Physics.append(Question(questionText: "What force do scientists such as Saul Perlmutter believe is counteracting gravity and allowing the universe to accelerate the rate of its expansion?", answers: ["Black holes", "Gray matter", "Dark energy", "Curved space."], correctAnswer: 2, subjectIndex: 2))

        Physics.append(Question(questionText: "Which of the following did Robert Wilson and co-workers discover in support of the Big Bang Theory?", answers: ["The universe is expanding rapidly.", "The universe has many galaxies close to ours.", "The universe is composed of billions of galaxies.", "The universe has background microwave radiation."], correctAnswer: 3, subjectIndex: 2))

        Physics.append(Question(questionText: "The Oot Cloud is believed to be", answers: ["A grouping of asteroids and meteoroids between the orbits of Mars and Jupiter","The gerat nebula found just below the belt stars of Orion.", "A spherical cloud of cometary nuclei far beyond the Kuiper Belt", "The circular disk of gas around the Sun's equator from which the planets formed"], correctAnswer: 2, subjectIndex: 2))
        
        
        //MARK: - BIOLOGY
        
        Biology.append(Question(questionText: "___________is an organized profile of a person's chromosomes", answers: ["Karyotpe", "DNA", "RNA", "Proteins"], correctAnswer: 0, subjectIndex: 4))
        
        Biology.append(Question(questionText: "A genetic disorder is a disease that is caused by an abnormality in an individual's DNA.Which of the following is a health program that identifies treatable  genetic disorders in newborn infants?", answers: ["Newborn radiographic screening", "Newborn genetic screening", "Gel electrophoresis", "DNA Microarray"], correctAnswer: 1, subjectIndex: 4))
        
        Biology.append(Question(questionText: "_______is the creation of an organism that is an exact genetic copy of another. This means that every single bit of DNA is the same between the two", answers: ["DNa Microarray", "DNA Extraction", "Gel Electrophoresis", "Cloning"], correctAnswer: 3, subjectIndex: 4))
        
        Biology.append(Question(questionText: "_______ the protein –making machinery that reads mRNA sequence and translate it  into  amino acid sequence of protein", answers: ["Golgi bodies", "RNA", "Ribosomes", "DNA"], correctAnswer: 2, subjectIndex: 4))
        
        Biology.append(Question(questionText: "The sequence of nucleotides in a gene is translated by cells to produce a chain of amino acids, creating ________", answers: ["Genes", "Chromosomes", "ATP", "Proteins"], correctAnswer: 3, subjectIndex: 4))
        
        Biology.append(Question(questionText: "It refers to the use of microorganisms, such as bacteria or yeasts, or biological substances, such as enzymes, to perform specific industrial or manufacturing processes.", answers: ["Biotechniques", "Biochemistry", "Biotechnology", "Bioessence"], correctAnswer: 2, subjectIndex: 4))
        
        Biology.append(Question(questionText: "They are the master cells of the human body. They can divide to produce copies of themselves and many other types of cell.", answers: ["Chromosomes", "Genes", "Stem cells", "Nucleotides"], correctAnswer: 2, subjectIndex: 4))
        
        Biology.append(Question(questionText: "The three step process in Transcription are:", answers: ["Initiation----Elongation of RNA chain----Termination", "Initiation-----Elongation of DNA chain----Termination", "Addition----Inversion-----Deletion", "Inversion-----Addition----Deletion"], correctAnswer: 0, subjectIndex: 4))
        
        Biology.append(Question(questionText: "Genetic information is carried by________from cell to cell and from generation to generation.", answers: ["Enzymes", "Protein", "Nucleotide", "DNA"], correctAnswer: 3, subjectIndex: 4))
        
        Biology.append(Question(questionText: "Which were the first elements to form after the Big Bang started to cool?", answers: ["Uranium and plutonium", "Carbon and silicon", "Oxygen and nitrogen", "Hydrogen and helium"], correctAnswer: 3, subjectIndex: 4))
        
    
      
        
        //MARK: - SAT
        
        
        SAT.append(Question(questionText: "Which of the following is the newest element to be discovered and synthesised?", answers: ["Flerovium", "Ununpentium", "Livermorium", "Ununseptium"], correctAnswer: 3, subjectIndex: 3))
        
        SAT.append(Question(questionText: "A stone is dropped into a deep well and is heard to hit the water 3.41 sec after being dropped. Determine the depth of the well.", answers: ["52.3 m", "57 m", "-52.3 m", "-57 m"], correctAnswer: 3, subjectIndex: 3))
        
        SAT.append(Question(questionText: "A piece of wire is 12 in. long. The wire is cut into two pieces and then each piece is bent into a square. Find the length of the longer piece if the sum of the areas of these two squares is to be 3.5 in^2.", answers: ["7", "6", "5", "4"], correctAnswer: 1, subjectIndex: 3))
            
        SAT.append(Question(questionText: "It refers to the use of microorganisms, such as bacteria or yeasts, or biological substances, such as enzymes, to perform specific industrial or manufacturing processes.", answers: ["Biotechniques", "Biochemistry", "Biotechnology", "Bioessence"], correctAnswer: 2, subjectIndex: 3))
        
        SAT.append(Question(questionText: "Which of the following experiments was used to prove Einstein's Theory of General Relativity?", answers: ["Scientists mapped the orbits of nearby solar systems.", "Scientists viewed light bending around a bowling ball.", "Scientists charted the position of stars throughout a year.", "Scientists took photos of stars before and during a solar eclipse."], correctAnswer: 3, subjectIndex: 3))
        
        SAT.append(Question(questionText: "Which of the following is the newest element to be discovered and synthesised?", answers: ["Flerovium", "Ununpentium", "Livermorium", "Ununseptium"], correctAnswer: 3, subjectIndex: 3))
        
        SAT.append(Question(questionText: "What are the most common elements in the human body?", answers: ["Phosphorus, nitrogen, calcium", "Sulfur, sodium, magnesium", "Copper, zinc, selenium", "Oxygen, carbon and hydrogen"], correctAnswer: 3, subjectIndex: 3))
        
        SAT.append(Question(questionText: "A genetic disorder is a disease that is caused by an abnormality in an individual's DNA.Which of the following is a health program that identifies treatable  genetic disorders in newborn infants?", answers: ["Newborn radiographic screening", "Newborn genetic screening", "Gel electrophoresis", "DNA Microarray"], correctAnswer: 1, subjectIndex: 3))
        
        SAT.append(Question(questionText: "The Oot Cloud is believed to be", answers: ["A grouping of asteroids and meteoroids between the orbits of Mars and Jupiter","The gerat nebula found just below the belt stars of Orion.", "A spherical cloud of cometary nuclei far beyond the Kuiper Belt", "The circular disk of gas around the Sun's equator from which the planets formed"], correctAnswer: 2, subjectIndex: 3))
        
        SAT.append(Question(questionText: "The ratio between the perimeter and the width of a rectangle is 14 : 3. If the area of the rectangle is 108 sq. cm, what is the length of the rectangle?", answers: ["18", "9", "12", "24"], correctAnswer: 2, subjectIndex: 3))

        
        
        
        
        arrayOfSubjects.append(Mathematics)
        arrayOfSubjects.append(SAT)
        arrayOfSubjects.append(Physics)
        arrayOfSubjects.append(Chemistry)
        arrayOfSubjects.append(Biology)

    }
    
}
