(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_controltower_landing_zone__timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** aws_controltower_landing_zone__timeouts *)

type aws_controltower_landing_zone__drift_status = {
  status : string prop;  (** status *)
}
[@@deriving yojson_of]

type aws_controltower_landing_zone = {
  id : string prop option; [@option]  (** id *)
  manifest_json : string prop;  (** manifest_json *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  version : string prop;  (** version *)
  timeouts : aws_controltower_landing_zone__timeouts option;
}
[@@deriving yojson_of]
(** aws_controltower_landing_zone *)

type t = {
  arn : string prop;
  drift_status :
    aws_controltower_landing_zone__drift_status list prop;
  id : string prop;
  latest_available_version : string prop;
  manifest_json : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version : string prop;
}

let aws_controltower_landing_zone ?id ?tags ?tags_all ?timeouts
    ~manifest_json ~version __resource_id =
  let __resource_type = "aws_controltower_landing_zone" in
  let __resource =
    ({ id; manifest_json; tags; tags_all; version; timeouts }
      : aws_controltower_landing_zone)
  in
  Resource.add ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_controltower_landing_zone __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       drift_status =
         Prop.computed __resource_type __resource_id "drift_status";
       id = Prop.computed __resource_type __resource_id "id";
       latest_available_version =
         Prop.computed __resource_type __resource_id
           "latest_available_version";
       manifest_json =
         Prop.computed __resource_type __resource_id "manifest_json";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
       version =
         Prop.computed __resource_type __resource_id "version";
     }
      : t)
  in
  __resource_attributes
