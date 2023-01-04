# class Nameable, which will be the base class for all classes that'll be decorated.
class Nameable
  def correct_name
    raise NotImplementedError, 'There is something wrong'
  end
end
