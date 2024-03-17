(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_security_profile = {
  description : string option; [@option]  (** description *)
  instance_id : string;  (** instance_id *)
  name : string;  (** name *)
  permissions : string list option; [@option]  (** permissions *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_connect_security_profile *)

let aws_connect_security_profile ?description ?permissions ?tags
    ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_security_profile" in
  let __resource =
    { description; instance_id; name; permissions; tags }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_security_profile __resource);
  ()
