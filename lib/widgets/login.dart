import 'package:ejercitando/models/login.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';


class LoginWidet2 extends StatefulWidget {
  
  @override
  _LoginWidet2State createState() => _LoginWidet2State();
  
}

class _LoginWidet2State extends State<LoginWidet2> {
  final LinearGradient theme;
  final Login login;
  String dropdownValue = '200';

  _LoginWidet2State({
    @required this.theme, 
    @required this.login
  });
  

  
  
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Text(login.name,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontFamily: "Dosis"
          ),
        ),
        _inputName(),
        Text(login.height,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontFamily: "Dosis"
          ),
        ),
        _inputHeight(),
        Text(login.weight,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontFamily: "Dosis"
          ),
        ),
        _inputWeight(),
        Text(login.age,
          style: TextStyle(
            color: Colors.black,
            fontSize: 13.0,
            fontFamily: "Dosis"
          ),
        ),
        _dropdownAge(),
      ],
    );
  }

  Widget _inputName() {
    return TextFormField(
      autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: 'Escribe aqui tu nombre',
        icon: Icon(Icons.person)
      ),
    );
  }

  Widget _inputHeight() {
    return TextFormField(
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: '0.0 M',
        labelText: 'Metros',
        icon: Icon(Icons.straighten)
      ),
    );
  }

  Widget _inputWeight() {
    return TextFormField(
      inputFormatters: [WhitelistingTextInputFormatter.digitsOnly],
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        hintText: '0.0 Kg',
        labelText: 'Kilogramos',
      ),
    );
  }

  Widget _dropdownAge() {
    return DropdownButton<String>(
      value: dropdownValue,
      icon: Icon(Icons.keyboard_arrow_down),
      onChanged: (String newValue){
        setState(() { dropdownValue = newValue; });
      },
      items: <String> [ '1900 ',	 '1901 ',	 '1902 ',	 '1903 ',	 '1904 ',	 '1905 ',	 '1906 ',	 '1907 ',	 '1908 ',	 '1909 ',  '1910 ',	 '1910 ',	 '1911 ',	 '1912 ',	 '1913 ',	 '1914 ',	 '1915 ',	 '1916 ',	 '1917 ',	 '1918 ',	 '1919 ',   '1920 ',	 '1921 ',	 '1922 ',	 '1923 ',	 '1924 ',	 '1925 ',	 '1926 ',	 '1927 ',	 '1928 ',	 '1929 ',  '1930 ',	 '1931 ',	 '1932 ',	 '1933 ',	 '1934 ',	 '1935 ',	 '1936 ',	 '1937 ',	 '1938 ',	 '1939 ',  '1940 ',	 '1941 ',	 '1942 ',	 '1943 ',	 '1944 ',	 '1945 ',	 '1946 ',	 '1947 ',	 '1948 ',	 '1949 ',  '1950 ',	 '1951 ',	 '1952 ',	 '1953 ',	 '1954 ',	 '1955 ',	 '1956 ',	 '1957 ',	 '1958 ',	 '1959 ',  '1960 ',	 '1961 ',	 '1962 ',	 '1963 ',	 '1964 ',	 '1965 ',	 '1966 ',	 '1967 ',	 '1968 ',	 '1969 ',  '1970 ',	 '1971 ',	 '1972 ',	 '1973 ',	 '1974 ',	 '1975 ',	 '1976 ',	 '1977 ',	 '1978 ',	 '1979 ' ]
        .map<DropdownMenuItem<String>>((String value) {
      return DropdownMenuItem<String>(
        value: value,
        child: Text(value),
      );
        }).toList(),
    );
  }

}