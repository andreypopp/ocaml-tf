(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_emr_security_configuration = {
  configuration : string prop;  (** configuration *)
  id : string prop option; [@option]  (** id *)
  name : string prop option; [@option]  (** name *)
  name_prefix : string prop option; [@option]  (** name_prefix *)
}
[@@deriving yojson_of]
(** aws_emr_security_configuration *)

let aws_emr_security_configuration ?id ?name ?name_prefix
    ~configuration () : aws_emr_security_configuration =
  { configuration; id; name; name_prefix }

type t = {
  configuration : string prop;
  creation_date : string prop;
  id : string prop;
  name : string prop;
  name_prefix : string prop;
}

let make ?id ?name ?name_prefix ~configuration __id =
  let __type = "aws_emr_security_configuration" in
  let __attrs =
    ({
       configuration = Prop.computed __type __id "configuration";
       creation_date = Prop.computed __type __id "creation_date";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       name_prefix = Prop.computed __type __id "name_prefix";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_emr_security_configuration
        (aws_emr_security_configuration ?id ?name ?name_prefix
           ~configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?name ?name_prefix ~configuration __id =
  let (r : _ Tf_core.resource) =
    make ?id ?name ?name_prefix ~configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
