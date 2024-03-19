(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_mskconnect_worker_configuration = {
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  properties_file_content : string prop;
      (** properties_file_content *)
}
[@@deriving yojson_of]
(** aws_mskconnect_worker_configuration *)

let aws_mskconnect_worker_configuration ?description ?id ~name
    ~properties_file_content () : aws_mskconnect_worker_configuration
    =
  { description; id; name; properties_file_content }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  latest_revision : float prop;
  name : string prop;
  properties_file_content : string prop;
}

let register ?tf_module ?description ?id ~name
    ~properties_file_content __resource_id =
  let __resource_type = "aws_mskconnect_worker_configuration" in
  let __resource =
    aws_mskconnect_worker_configuration ?description ?id ~name
      ~properties_file_content ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_mskconnect_worker_configuration __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       description =
         Prop.computed __resource_type __resource_id "description";
       id = Prop.computed __resource_type __resource_id "id";
       latest_revision =
         Prop.computed __resource_type __resource_id
           "latest_revision";
       name = Prop.computed __resource_type __resource_id "name";
       properties_file_content =
         Prop.computed __resource_type __resource_id
           "properties_file_content";
     }
      : t)
  in
  __resource_attributes
