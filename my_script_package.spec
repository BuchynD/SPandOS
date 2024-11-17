Name:           my_script_package
Version:        1.0
Release:        1%{?dist}
Summary:        My custom script package

License:        GPL
URL:            http://example.com
Source0:        script.sh

BuildArch:      noarch

%description
This is a custom RPM package that contains a script.

%prep
# No preparation needed for this simple package.

%install
mkdir -p %{buildroot}/usr/local/bin
cp %{SOURCE0} %{buildroot}/usr/local/bin/script.sh

%files
/usr/local/bin/script.sh

%changelog
* Sat Nov 16 2024 Buchyn Daniil <buchindaniil6@gmail.com> - 1.0-1
- Initial RPM package for script.sh
