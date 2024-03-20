(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type server_side_encryption_configuration = {
  kms_key_arn : string prop;  (** kms_key_arn *)
}
[@@deriving yojson_of]
(** server_side_encryption_configuration *)

type timeouts = {
  create : string prop option; [@option]  (** create *)
  delete : string prop option; [@option]  (** delete *)
  update : string prop option; [@option]  (** update *)
}
[@@deriving yojson_of]
(** timeouts *)

type aws_chimesdkvoice_voice_profile_domain = {
  description : string prop option; [@option]  (** description *)
  name : string prop;  (** name *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  server_side_encryption_configuration :
    server_side_encryption_configuration list;
  timeouts : timeouts option;
}
[@@deriving yojson_of]
(** aws_chimesdkvoice_voice_profile_domain *)

let server_side_encryption_configuration ~kms_key_arn () :
    server_side_encryption_configuration =
  { kms_key_arn }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_chimesdkvoice_voice_profile_domain ?description ?tags
    ?tags_all ?timeouts ~name ~server_side_encryption_configuration
    () : aws_chimesdkvoice_voice_profile_domain =
  {
    description;
    name;
    tags;
    tags_all;
    server_side_encryption_configuration;
    timeouts;
  }

type t = {
  arn : string prop;
  description : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?tags ?tags_all ?timeouts ~name
    ~server_side_encryption_configuration __id =
  let __type = "aws_chimesdkvoice_voice_profile_domain" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
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
      yojson_of_aws_chimesdkvoice_voice_profile_domain
        (aws_chimesdkvoice_voice_profile_domain ?description ?tags
           ?tags_all ?timeouts ~name
           ~server_side_encryption_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?tags ?tags_all ?timeouts ~name
    ~server_side_encryption_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?description ?tags ?tags_all ?timeouts ~name
      ~server_side_encryption_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
