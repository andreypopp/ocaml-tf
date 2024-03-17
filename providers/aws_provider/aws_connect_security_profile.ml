(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_connect_security_profile = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  instance_id : string prop;  (** instance_id *)
  name : string prop;  (** name *)
  permissions : string prop list option; [@option]
      (** permissions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_connect_security_profile *)

let aws_connect_security_profile ?description ?id ?permissions ?tags
    ?tags_all ~instance_id ~name __resource_id =
  let __resource_type = "aws_connect_security_profile" in
  let __resource =
    {
      description;
      id;
      instance_id;
      name;
      permissions;
      tags;
      tags_all;
    }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_connect_security_profile __resource);
  ()
