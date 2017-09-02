#include <cstdio>
#include <taglib/fileref.h>
#include <taglib/tag.h>

int main(int argc, char* argv[])
{
	if(argc != 3)
	{
		printf("usage: %s FROMFILE TOFILE\n", argv[0]);
		return 1;
	}

	TagLib::FileRef fromfile(argv[1]);
	TagLib::FileRef tofile(argv[2]);

	TagLib::Tag::duplicate(fromfile.tag(), tofile.tag());

	tofile.save();
}
