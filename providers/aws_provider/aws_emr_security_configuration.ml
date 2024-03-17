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
    ~configuration __resource_id =
  let __resource_type = "aws_emr_security_configuration" in
  let __resource = { configuration; id; name; name_prefix } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_emr_security_configuration __resource);
  ()
