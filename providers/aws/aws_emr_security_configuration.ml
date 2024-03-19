(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

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

let register ?tf_module ?id ?name ?name_prefix ~configuration
    __resource_id =
  let __resource_type = "aws_emr_security_configuration" in
  let __resource =
    aws_emr_security_configuration ?id ?name ?name_prefix
      ~configuration ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_security_configuration __resource);
  let __resource_attributes =
    ({
       configuration =
         Prop.computed __resource_type __resource_id "configuration";
       creation_date =
         Prop.computed __resource_type __resource_id "creation_date";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       name_prefix =
         Prop.computed __resource_type __resource_id "name_prefix";
     }
      : t)
  in
  __resource_attributes
