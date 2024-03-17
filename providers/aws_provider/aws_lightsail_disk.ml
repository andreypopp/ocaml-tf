(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open Tf.Prelude

type aws_lightsail_disk = {
  availability_zone : string;  (** availability_zone *)
  name : string;  (** name *)
  size_in_gb : float;  (** size_in_gb *)
  tags : (string * string) list option; [@option]  (** tags *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk *)

let aws_lightsail_disk ?tags ~availability_zone ~name ~size_in_gb
    __resource_id =
  let __resource_type = "aws_lightsail_disk" in
  let __resource = { availability_zone; name; size_in_gb; tags } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_disk __resource);
  ()
