namespace collections
{
    public class CD
    {
        public string Interpret { get; set; }
        public string AlbumTitel { get; set; }

        public CD(string _interpret, string _albumtitel)
        {
            this.Interpret = _interpret;
            this.AlbumTitel = _albumtitel;
        }
    }
}