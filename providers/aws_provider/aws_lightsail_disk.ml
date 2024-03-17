(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_disk = {
  availability_zone : string;  (** availability_zone *)
  id : string option; [@option]  (** id *)
  name : string;  (** name *)
  size_in_gb : float;  (** size_in_gb *)
  tags : (string * string) list option; [@option]  (** tags *)
  tags_all : (string * string) list option; [@option]  (** tags_all *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk *)

let aws_lightsail_disk ?id ?tags ?tags_all ~availability_zone ~name
    ~size_in_gb __resource_id =
  let __resource_type = "aws_lightsail_disk" in
  let __resource =
    { availability_zone; id; name; size_in_gb; tags; tags_all }
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_disk __resource);
  ()
