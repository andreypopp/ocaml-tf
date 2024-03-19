(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_lightsail_disk_attachment = {
  disk_name : string prop;  (** disk_name *)
  disk_path : string prop;  (** disk_path *)
  id : string prop option; [@option]  (** id *)
  instance_name : string prop;  (** instance_name *)
}
[@@deriving yojson_of]
(** aws_lightsail_disk_attachment *)

let aws_lightsail_disk_attachment ?id ~disk_name ~disk_path
    ~instance_name () : aws_lightsail_disk_attachment =
  { disk_name; disk_path; id; instance_name }

type t = {
  disk_name : string prop;
  disk_path : string prop;
  id : string prop;
  instance_name : string prop;
}

let register ?tf_module ?id ~disk_name ~disk_path ~instance_name
    __resource_id =
  let __resource_type = "aws_lightsail_disk_attachment" in
  let __resource =
    aws_lightsail_disk_attachment ?id ~disk_name ~disk_path
      ~instance_name ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_lightsail_disk_attachment __resource);
  let __resource_attributes =
    ({
       disk_name =
         Prop.computed __resource_type __resource_id "disk_name";
       disk_path =
         Prop.computed __resource_type __resource_id "disk_path";
       id = Prop.computed __resource_type __resource_id "id";
       instance_name =
         Prop.computed __resource_type __resource_id "instance_name";
     }
      : t)
  in
  __resource_attributes
