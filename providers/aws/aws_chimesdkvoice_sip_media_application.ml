(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

[@@@ocaml.warning "-33-27-26"]

open! Tf.Prelude

type endpoints = { lambda_arn : string prop  (** lambda_arn *) }
[@@deriving yojson_of]
(** endpoints *)

type aws_chimesdkvoice_sip_media_application = {
  aws_region : string prop;  (** aws_region *)
  id : string prop option; [@option]  (** id *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  endpoints : endpoints list;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_sip_media_application *)

let endpoints ~lambda_arn () : endpoints = { lambda_arn }

let aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
    ~aws_region ~name ~endpoints () :
    aws_chimesdkvoice_sip_media_application =
  { aws_region; id; name; tags; tags_all; endpoints }

type t = {
  arn : string prop;
  aws_region : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let register ?tf_module ?id ?tags ?tags_all ~aws_region ~name
    ~endpoints __resource_id =
  let __resource_type = "aws_chimesdkvoice_sip_media_application" in
  let __resource =
    aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
      ~aws_region ~name ~endpoints ()
  in
  Resource.add ?tf_module ~type_:__resource_type ~id:__resource_id
    (yojson_of_aws_chimesdkvoice_sip_media_application __resource);
  let __resource_attributes =
    ({
       arn = Prop.computed __resource_type __resource_id "arn";
       aws_region =
         Prop.computed __resource_type __resource_id "aws_region";
       id = Prop.computed __resource_type __resource_id "id";
       name = Prop.computed __resource_type __resource_id "name";
       tags = Prop.computed __resource_type __resource_id "tags";
       tags_all =
         Prop.computed __resource_type __resource_id "tags_all";
     }
      : t)
  in
  __resource_attributes
