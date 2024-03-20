(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_imagebuilder_component = {
  change_description : string prop option; [@option]
      (** change_description *)
  data : string prop option; [@option]  (** data *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  kms_key_id : string prop option; [@option]  (** kms_key_id *)
  name : string prop;  (** name *)
  platform : string prop;  (** platform *)
  skip_destroy : bool prop option; [@option]  (** skip_destroy *)
  supported_os_versions : string prop list option; [@option]
      (** supported_os_versions *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  uri : string prop option; [@option]  (** uri *)
  version : string prop;  (** version *)
}
[@@deriving yojson_of]
(** aws_imagebuilder_component *)

let aws_imagebuilder_component ?change_description ?data ?description
    ?id ?kms_key_id ?skip_destroy ?supported_os_versions ?tags
    ?tags_all ?uri ~name ~platform ~version () :
    aws_imagebuilder_component =
  {
    change_description;
    data;
    description;
    id;
    kms_key_id;
    name;
    platform;
    skip_destroy;
    supported_os_versions;
    tags;
    tags_all;
    uri;
    version;
  }

type t = {
  arn : string prop;
  change_description : string prop;
  data : string prop;
  date_created : string prop;
  description : string prop;
  encrypted : bool prop;
  id : string prop;
  kms_key_id : string prop;
  name : string prop;
  owner : string prop;
  platform : string prop;
  skip_destroy : bool prop;
  supported_os_versions : string list prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
  uri : string prop;
  version : string prop;
}

let make ?change_description ?data ?description ?id ?kms_key_id
    ?skip_destroy ?supported_os_versions ?tags ?tags_all ?uri ~name
    ~platform ~version __id =
  let __type = "aws_imagebuilder_component" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       change_description =
         Prop.computed __type __id "change_description";
       data = Prop.computed __type __id "data";
       date_created = Prop.computed __type __id "date_created";
       description = Prop.computed __type __id "description";
       encrypted = Prop.computed __type __id "encrypted";
       id = Prop.computed __type __id "id";
       kms_key_id = Prop.computed __type __id "kms_key_id";
       name = Prop.computed __type __id "name";
       owner = Prop.computed __type __id "owner";
       platform = Prop.computed __type __id "platform";
       skip_destroy = Prop.computed __type __id "skip_destroy";
       supported_os_versions =
         Prop.computed __type __id "supported_os_versions";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
       uri = Prop.computed __type __id "uri";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_imagebuilder_component
        (aws_imagebuilder_component ?change_description ?data
           ?description ?id ?kms_key_id ?skip_destroy
           ?supported_os_versions ?tags ?tags_all ?uri ~name
           ~platform ~version ());
    attrs = __attrs;
  }

let register ?tf_module ?change_description ?data ?description ?id
    ?kms_key_id ?skip_destroy ?supported_os_versions ?tags ?tags_all
    ?uri ~name ~platform ~version __id =
  let (r : _ Tf_core.resource) =
    make ?change_description ?data ?description ?id ?kms_key_id
      ?skip_destroy ?supported_os_versions ?tags ?tags_all ?uri ~name
      ~platform ~version __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
