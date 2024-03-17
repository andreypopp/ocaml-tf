(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_disk_attachment = {
  disk_name : string;  (** disk_name *)
  disk_path : string;  (** disk_path *)
  id : string option; [@option]  (** id *)
  instance_name : string;  (** instance_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk_attachment *)

let aws_lightsail_disk_attachment ?id ~disk_name ~disk_path
    ~instance_name __resource_id =
  let __resource_type = "aws_lightsail_disk_attachment" in
  let __resource = { disk_name; disk_path; id; instance_name } in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_disk_attachment __resource);
  ()
