(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

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

let make ?id ?tags ?tags_all ~aws_region ~name ~endpoints __id =
  let __type = "aws_chimesdkvoice_sip_media_application" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       aws_region = Prop.computed __type __id "aws_region";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_chimesdkvoice_sip_media_application
        (aws_chimesdkvoice_sip_media_application ?id ?tags ?tags_all
           ~aws_region ~name ~endpoints ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ~aws_region ~name
    ~endpoints __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~aws_region ~name ~endpoints __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
