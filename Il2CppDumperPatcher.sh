echo Patching...
# Searches for word and replace it.
sed -i 's|var writer = new StreamWriter(new FileStream(outputDir + "dump.cs", FileMode.Create), new UTF8Encoding(false));|var writer = new StreamWriter(new FileStream(Path.Combine(outputDir, "dump.cs"), FileMode.Create), new UTF8Encoding(false));|g' Il2CppDumper/Outputs/Il2CppDecompiler.cs
sed -i 's|File.WriteAllText(outputDir + "stringliteral.json", JsonSerializer.Serialize(stringLiterals, jsonOptions), new UTF8Encoding(false));|File.WriteAllText(Path.Combine(outputDir, "stringliteral.json"), JsonSerializer.Serialize(stringLiterals, jsonOptions), new UTF8Encoding(false));|g' Il2CppDumper/Outputs/StructGenerator.cs
sed -i 's|File.WriteAllText(outputDir + "script.json", JsonSerializer.Serialize(json, jsonOptions));|File.WriteAllText(Path.Combine(outputDir, "script.json"), JsonSerializer.Serialize(json, jsonOptions), new UTF8Encoding(false));|g' Il2CppDumper/Outputs/StructGenerator.cs
sed -i 's|File.WriteAllText(outputDir + "il2cpp.h", sb.ToString());|File.WriteAllText(Path.Combine(outputDir, "il2cpp.h"), sb.ToString());|g' Il2CppDumper/Outputs/StructGenerator.cs
# Done!
echo Patched!
