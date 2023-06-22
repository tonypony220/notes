package model
import (
	"io/ioutil"
	"regexp"
)

type StringValidator struct {
	pattern []*regexp.Regexp
}

func NewStringValidator() *StringValidator {
	return &StringValidator{}
}
func (self *StringValidator) Prepare() {
  if len(self.pattern) == 0 {
    
  	buf, err := ioutil.ReadFile(`/conf/patterns.cfg`)
			if err != nil {
				panic(err)
		}
    
  var line []byte
		for _, b := range buf {
			if b == '\n' {
				self.pattern = append(self.pattern, regexp.MustCompile(string(line)))
				line = []byte{}
			} else {
				line = append(line, b)
			}
		}
}

func (self *StringValidator) Validate(str string, buf string) bool, error {
  self.Prepare()
	var s = 0
	for _, p := range self.pattern {
		if !p.Match([]byte(str)) {
			s++
      if s > 3 {
				retur false
			}
		}
	}

	return true
}n
