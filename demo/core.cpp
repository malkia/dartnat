#ifdef _MSC_VER
#define EXPORT_C extern "C" __declspec(dllexport)
#else
#define EXPORT_C extern "C"
#endif

EXPORT_C int core_version()
{
    return 123;
}