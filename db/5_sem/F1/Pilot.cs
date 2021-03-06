﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace F1
{
    public class Pilot
    {
        string _name;
        int _points;

        public Pilot(string name, int points)
        {
            _name = name;
            _points = points;
        }

        public string Name
        {
            get
            {
                return _name;
            }
        }

        public int Points
        {
            get
            {
                return _points;
            }
        }

        public void AddPoints(int points)
        {
            _points += points;
        }

        override public string ToString()
        {
            return string.Format("{0}/{1}", _name, _points);
        }
    }
}
