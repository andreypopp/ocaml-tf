(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_simpledb_domain = { name : string prop  (** name *) }
[@@deriving yojson_of]
(** aws_simpledb_domain *)

let aws_simpledb_domain ~name () : aws_simpledb_domain = { name }

type t = { id : string prop; name : string prop }

let register ?tf_module ~name __resource_id =
  let __resource_type = "aws_simpledb_domain" in
  let __resource = aws_simpledb_domain ~name () in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_simpledb_domain __resource);
  let __resource_attributes =
    ({
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
     }
      : t)
  in
  __resource_attributes
