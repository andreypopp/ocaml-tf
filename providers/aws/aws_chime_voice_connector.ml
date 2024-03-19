(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type aws_chime_voice_connector = {
  aws_region : string prop option; [@option]  (** aws_region *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  require_encryption : bool prop;  (** require_encryption *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
}
[@@deriving yojson_of]
(** aws_chime_voice_connector *)

let aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption () : aws_chime_voice_connector =
  { aws_region; id; name; require_encryption; tags; tags_all }

type t = {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  outbound_host_name : string prop;
  require_encryption : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?aws_region ?id ?tags ?tags_all ~name
    ~require_encryption __resource_id =
  let __resource_type = "aws_chime_voice_connector" in
  let __resource =
    aws_chime_voice_connector ?aws_region ?id ?tags ?tags_all ~name
      ~require_encryption ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chime_voice_connector __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_region =
         Prop.computed __resource_type __resource_id "aws_region";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       outbound_host_name =
         Prop.computed __resource_type __resource_id
           "outbound_host_name";
       require_encryption =
         Prop.computed __resource_type __resource_id
           "require_encryption";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
