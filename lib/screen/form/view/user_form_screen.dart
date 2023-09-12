import 'package:flutter/material.dart';

import '../../../widget/custom_form_widget.dart';
import '../../../widget/custom_textformfield_widget.dart';

class UserFormScreen extends StatefulWidget {
  const UserFormScreen({Key? key}) : super(key: key);

  @override
  State<UserFormScreen> createState() => _UserFormScreenState();
}

class _UserFormScreenState extends State<UserFormScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  String _name = '';
  String _email = '';
  bool _acceptTerms = false;

  final List<String> streamOptions = [
    'Management',
    'Science',
    'Computer',
    'Arts',
  ];
  String? _selectedStream;
  DateTime? _selectedDate;

  double? widthMedQuery, heightMedQuery;

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      // Process the form data
      print('Name: $_name');
      print('Email: $_email');
      print('Accept Terms: $_acceptTerms');
    }
  }

  String? preferredIntake;
  TextEditingController gapBetweenEducationsController = TextEditingController();

  // dropdown for select country
  String? selectedCountry;
  final List<String> countries = [
    'United States',
    'Canada',
    'United Kingdom',
    'Germany',
    'France',
    'Australia',
    'India',
    'Japan'
  ];

  String? selectedCity;
  final List<String> cities = [
    'Toronto',
    'Montreal',
    'Vancouver',
    'Calgary',
    'Edmonton',
    'Ottawa',
    'Quebec City',
    'Winnipeg',
    'Hamilton',
    'London',
  ];

  String? selectedLanguage;
  final List<String> languages = [
    'PTE',
    'ILETS',
    'TOFELS'
  ];

  String? selectedCourse;
  final List<String> courses = [
    'Computer Science',
    'Engineering',
    'Mathematics',
    'Physics',
    'Biology',
    'Psychology',
    'Business Administration',
    'Art History',
    'Economics',
    'History'
  ];

  String? selectedIntake;
  final List<String> intakes = [
    'January',
    'May',
    'September'
  ];

  @override
  void dispose() {
    gapBetweenEducationsController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    widthMedQuery = MediaQuery.of(context).size.width;
    heightMedQuery = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        elevation: 0,
        title: const Text('Sajilo Visa', style: TextStyle(
          color: Colors.black87, fontSize: 18.0, fontWeight: FontWeight.bold
        ),),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: <Widget>[
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('Full name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _name = value!;
                              },
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('email@address.com'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                // You can add more email validation logic here if needed
                                return null;
                              },
                              onSaved: (value) {
                                _email = value!;
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('Address'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _name = value!;
                              },
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('Phone number'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                // You can add more email validation logic here if needed
                                return null;
                              },
                              onSaved: (value) {
                                _email = value!;
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(bottom: 10.0),
                      child: Row(
                        children: <Widget>[
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('Guardian name'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your name';
                                }
                                return null;
                              },
                              onSaved: (value) {
                                _name = value!;
                              },
                            ),
                          ),
                          const SizedBox(width: 10.0),
                          Expanded(
                            child: TextFormField(
                              decoration: customInputDecoration('Guardian/Local guardian number'),
                              validator: (value) {
                                if (value!.isEmpty) {
                                  return 'Please enter your email';
                                }
                                // You can add more email validation logic here if needed
                                return null;
                              },
                              onSaved: (value) {
                                _email = value!;
                              },
                            ),
                          )
                        ],
                      ),
                    ),

                    Container(
                      padding: const EdgeInsets.only(top: 20.0, bottom: 20.0),
                      color: Colors.white,
                      width: widthMedQuery,
                      child: Row(
                        children: <Widget>[

                          VerticalTextWithGradientBackground('Academic Qualification'),

                          // start
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                            width: widthMedQuery!/4 - 30,
                            color: Colors.grey[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: menuTextCustomDecoration(),
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Text(
                                      'SLC/SEE',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                customEduHeaderTitle('Board'),

                                TextFormField(
                                  decoration: educationSectionTexFormField('HMG, PCl'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter the board';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Stream'),
                                Container(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    border: Border.all(color: Colors.white, width: 0.0),
                                    borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedStream,
                                    items: [
                                      for (final stream in streamOptions)
                                        DropdownMenuItem(
                                          value: stream,
                                          child: Text(stream),
                                        ),
                                    ],
                                    decoration: const InputDecoration(
                                      hintText: 'Select Stream',
                                      border: InputBorder.none, // Remove bottom border
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStream = value;
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select a stream';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                customEduHeaderTitle('CGPA/Grade'),
                                TextFormField(
                                  decoration: educationSectionTexFormField('3.54, 60%, A+'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter CGPA/Grade';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Pass Out Year'),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2030),
                                    );
                                    if (selectedDate != null) {
                                      setState(() {
                                        _selectedDate = selectedDate;
                                      });
                                    }
                                  },
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: educationSectionTexFormField(_selectedDate == null
                                        ? 'Select Pass Out Year'
                                        : _selectedDate!.year.toString()),
                                    validator: (value) {
                                      if (_selectedDate == null) {
                                        return 'Please select a pass out year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                            width: widthMedQuery!/4 - 30,
                            color: Colors.grey[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: menuTextCustomDecoration(),
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Text(
                                      '+2/PCL',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                customEduHeaderTitle('Board'),

                                TextFormField(
                                  decoration: educationSectionTexFormField('HMG, PCl'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter the board';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Stream'),
                                Container(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedStream,
                                    items: [
                                      for (final stream in streamOptions)
                                        DropdownMenuItem(
                                          value: stream,
                                          child: Text(stream),
                                        ),
                                    ],
                                    decoration: const InputDecoration(
                                      hintText: 'Select Stream',
                                      border: InputBorder.none, // Remove bottom border
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStream = value;
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select a stream';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                customEduHeaderTitle('CGPA/Grade'),
                                TextFormField(
                                  decoration: educationSectionTexFormField('3.54, 60%, A+'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter CGPA/Grade';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Pass Out Year'),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2030),
                                    );
                                    if (selectedDate != null) {
                                      setState(() {
                                        _selectedDate = selectedDate;
                                      });
                                    }
                                  },
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: educationSectionTexFormField(_selectedDate == null
                                        ? 'Select Pass Out Year'
                                        : _selectedDate!.year.toString()),
                                    validator: (value) {
                                      if (_selectedDate == null) {
                                        return 'Please select a pass out year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 10.0),
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                            width: widthMedQuery!/4 - 30,
                            color: Colors.grey[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: menuTextCustomDecoration(),
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Text(
                                      'Bachelor',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                customEduHeaderTitle('Board'),

                                TextFormField(
                                  decoration: educationSectionTexFormField('HMG, PCl'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter the board';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Stream'),
                                Container(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedStream,
                                    items: [
                                      for (final stream in streamOptions)
                                        DropdownMenuItem(
                                          value: stream,
                                          child: Text(stream),
                                        ),
                                    ],
                                    decoration: const InputDecoration(
                                      hintText: 'Select Stream',
                                      border: InputBorder.none, // Remove bottom border
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStream = value;
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select a stream';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                customEduHeaderTitle('CGPA/Grade'),
                                TextFormField(
                                  decoration: educationSectionTexFormField('3.54, 60%, A+'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter CGPA/Grade';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Pass Out Year'),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2030),
                                    );
                                    if (selectedDate != null) {
                                      setState(() {
                                        _selectedDate = selectedDate;
                                      });
                                    }
                                  },
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: educationSectionTexFormField(_selectedDate == null
                                        ? 'Select Pass Out Year'
                                        : _selectedDate!.year.toString()),
                                    validator: (value) {
                                      if (_selectedDate == null) {
                                        return 'Please select a pass out year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.only(top: 15.0, bottom: 15.0, left: 10.0, right: 10.0),
                            width: widthMedQuery!/4 - 30,
                            color: Colors.grey[100],
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  decoration: menuTextCustomDecoration(),
                                  padding: const EdgeInsets.all(1.0),
                                  child: Container(
                                    padding: const EdgeInsets.all(7.0),
                                    decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(20.0)
                                    ),
                                    child: const Text(
                                      'Master',
                                      style: TextStyle(
                                        fontSize: 17.0,
                                        color: Colors.black87,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ),
                                ),

                                customEduHeaderTitle('Board'),

                                TextFormField(
                                  decoration: educationSectionTexFormField('HMG, PCl'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter the board';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Stream'),
                                Container(
                                  padding: const EdgeInsets.only(left: 15.0),
                                  decoration: BoxDecoration(
                                      color: Colors.white,
                                      border: Border.all(color: Colors.white, width: 0.0),
                                      borderRadius: BorderRadius.circular(20.0)
                                  ),
                                  child: DropdownButtonFormField<String>(
                                    value: _selectedStream,
                                    items: [
                                      for (final stream in streamOptions)
                                        DropdownMenuItem(
                                          value: stream,
                                          child: Text(stream),
                                        ),
                                    ],
                                    decoration: const InputDecoration(
                                      hintText: 'Select Stream',
                                      border: InputBorder.none, // Remove bottom border
                                    ),
                                    onChanged: (value) {
                                      setState(() {
                                        _selectedStream = value;
                                      });
                                    },
                                    validator: (value) {
                                      if (value == null) {
                                        return 'Please select a stream';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                                customEduHeaderTitle('CGPA/Grade'),
                                TextFormField(
                                  decoration: educationSectionTexFormField('3.54, 60%, A+'),
                                  validator: (value) {
                                    if (value!.isEmpty) {
                                      return 'Please enter CGPA/Grade';
                                    }
                                    return null;
                                  },
                                ),
                                customEduHeaderTitle('Pass Out Year'),
                                GestureDetector(
                                  onTap: () async {
                                    DateTime? selectedDate = await showDatePicker(
                                      context: context,
                                      initialDate: DateTime.now(),
                                      firstDate: DateTime(2000),
                                      lastDate: DateTime(2030),
                                    );
                                    if (selectedDate != null) {
                                      setState(() {
                                        _selectedDate = selectedDate;
                                      });
                                    }
                                  },
                                  child: TextFormField(
                                    enabled: false,
                                    decoration: educationSectionTexFormField(_selectedDate == null
                                        ? 'Select Pass Out Year'
                                        : _selectedDate!.year.toString()),
                                    validator: (value) {
                                      if (_selectedDate == null) {
                                        return 'Please select a pass out year';
                                      }
                                      return null;
                                    },
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),

                    // course detail
                    Row(
                      children: <Widget>[
                        VerticalTextWithGradientBackground('Course Detail'),
                        Container(
                          margin: const EdgeInsets.only(left: 10.0),
                          width: widthMedQuery!/2 -50,
                          child: Column(
                            children: <Widget>[
                              DropdownButton<String>(
                                value: selectedCountry,
                                isExpanded: true,
                                hint: const Text('Interested Country'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCountry = newValue!;
                                  });
                                },
                                items: countries.map((String country) {
                                  return DropdownMenuItem<String>(
                                    value: country,
                                    child: Text(country),
                                  );
                                }).toList(),
                              ),
                              DropdownButton<String>(
                                value: selectedCourse,
                                isExpanded: true,
                                hint: const Text('Interested Course'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCourse = newValue!;
                                  });
                                },
                                items: courses.map((String country) {
                                  return DropdownMenuItem<String>(
                                    value: country,
                                    child: Text(country),
                                  );
                                }).toList(),
                              ),
                              DropdownButton<String>(
                                value: selectedIntake,
                                isExpanded: true,
                                hint: const Text('Prefered Intake'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedIntake = newValue!;
                                  });
                                },
                                items: intakes.map((String country) {
                                  return DropdownMenuItem<String>(
                                    value: country,
                                    child: Text(country),
                                  );
                                }).toList(),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 20.0),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: widthMedQuery!/2 -50,
                          child: Column(
                            children: <Widget>[
                              DropdownButton<String>(
                                value: selectedCity,
                                isExpanded: true,
                                hint: const Text('Interested City'),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectedCity = newValue!;
                                  });
                                },
                                items: cities.map((String country) {
                                  return DropdownMenuItem<String>(
                                    value: country,
                                    child: Text(country),
                                  );
                                }).toList(),
                              ),

                              TextFormField(
                                decoration: customInputDecoration('Remarks'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // You can add more email validation logic here if needed
                                  return null;
                                },
                                onSaved: (value) {
                                  _email = value!;
                                },
                              ),

                              TextFormField(
                                decoration: customInputDecoration('Gap between education (if any)'),
                                validator: (value) {
                                  if (value!.isEmpty) {
                                    return 'Please enter your email';
                                  }
                                  // You can add more email validation logic here if needed
                                  return null;
                                },
                                onSaved: (value) {
                                  _email = value!;
                                },
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                    
                    const SizedBox(height: 20.0),
                    
                    // test information and experience information
                    Row(
                      children: <Widget>[
                        Container(
                          width: widthMedQuery!/2,
                          child: Row(
                            children: <Widget>[
                              VerticalTextWithGradientBackground('Test Information'),
                              Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                width: widthMedQuery!/2 -50,
                                child: Column(
                                  children: <Widget>[
                                    DropdownButton<String>(
                                      value: selectedLanguage,
                                      isExpanded: true,
                                      hint: const Text('English language proficiency test'),
                                      onChanged: (String? newValue) {
                                        setState(() {
                                          selectedLanguage = newValue!;
                                        });
                                      },
                                      items: languages.map((String country) {
                                        return DropdownMenuItem<String>(
                                          value: country,
                                          child: Text(country),
                                        );
                                      }).toList(),
                                    ),

                                    TextFormField(
                                      decoration: customInputDecoration('Score'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your score';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    ),

                                    TextFormField(
                                      decoration: customInputDecoration('Test given Year'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your test given year';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: widthMedQuery!/2 - 40.0,
                          child: Row(
                            children: <Widget>[
                              VerticalTextWithGradientBackground('Experience Information'),
                              Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                width: widthMedQuery!/2 -100,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: customInputDecoration('Work Experience'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter experience';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    ),

                                    TextFormField(
                                      decoration: customInputDecoration('Job Description'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter job description';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    ),

                                    TextFormField(
                                      decoration: customInputDecoration('Duration'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return 'Please enter your duration';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    const SizedBox(height: 20.0),

                    // visa history
                    Row(
                      children: <Widget>[
                        Container(
                          width: widthMedQuery!/2,
                          child: Row(
                            children: <Widget>[
                              VerticalTextWithGradientBackground('Visa History'),
                              Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                width: widthMedQuery!/2 -50,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: customInputDecoration('Visa Rejection'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return '';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20.0),
                          width: widthMedQuery!/2 - 40.0,
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.only(left: 20.0),
                                width: widthMedQuery!/2 -100,
                                child: Column(
                                  children: <Widget>[
                                    TextFormField(
                                      decoration: customInputDecoration('Reason for Visa rejection and Attempt'),
                                      validator: (value) {
                                        if (value!.isEmpty) {
                                          return '';
                                        }
                                        // You can add more email validation logic here if needed
                                        return null;
                                      },
                                      onSaved: (value) {
                                        _email = value!;
                                      },
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),

                    CheckboxListTile(
                      title: const Text('I accept the terms and conditions'),
                      value: _acceptTerms,
                      onChanged: (value) {
                        setState(() {
                          _acceptTerms = value!;
                        });
                      },
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: _submitForm,
                      child: const Text('Submit'),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class VerticalTextWithGradientBackground extends StatelessWidget {
  String? title;
  VerticalTextWithGradientBackground(this.title);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          colors: [Colors.blue, Colors.green], // Adjust the gradient colors as needed
          begin: Alignment.topCenter,
          end: Alignment.bottomCenter,
        ),
      ),
      child: RotatedBox(
        quarterTurns: 3, // Rotate 270 degrees for vertical text
        child: Text(
          title.toString(),
          style: const TextStyle(
            fontSize: 24.0, // Adjust the font size as needed
            fontWeight: FontWeight.bold,
            color: Colors.white, // Text color
          ),
        ),
      ),
    );
  }
}