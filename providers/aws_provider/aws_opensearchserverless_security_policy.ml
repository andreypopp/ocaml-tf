(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_opensearchserverless_security_policy = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  policy : string prop;  (** policy *)
  type_ : string prop; [@key "type"]  (** type *)
}
[@@deriving yojson_of]
(** aws_opensearchserverless_security_policy *)

let aws_opensearchserverless_security_policy ?description ~name
    ~policy ~type_ __resource_id =
  let __resource_type = "aws_opensearchserverless_security_policy" in
  let __resource = { description; name; policy; type_ } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_opensearchserverless_security_policy __resource);
  ()
