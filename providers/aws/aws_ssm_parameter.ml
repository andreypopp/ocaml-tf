(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type aws_ssm_parameter = {
  allowed_pattern : string prop option; [@option]
      (** allowed_pattern *)
  arn : string prop option; [@option]  (** arn *)
  data_type : string prop option; [@option]  (** data_type *)
  description : string prop option; [@option]  (** description *)
  id : string prop option; [@option]  (** id *)
  insecure_value : string prop option; [@option]
      (** insecure_value *)
  key_id : string prop option; [@option]  (** key_id *)
  name : string prop;  (** name *)
  overwrite : bool prop option; [@option]  (** overwrite *)
  tags : (string * string prop) list option; [@option]  (** tags *)
  tags_all : (string * string prop) list option; [@option]
      (** tags_all *)
  tier : string prop option; [@option]  (** tier *)
  type_ : string prop; [@key "type"]  (** type *)
  value : string prop option; [@option]  (** value *)
}
[@@deriving yojson_of]
(** aws_ssm_parameter *)

let aws_ssm_parameter ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ () : aws_ssm_parameter =
  {
    allowed_pattern;
    arn;
    data_type;
    description;
    id;
    insecure_value;
    key_id;
    name;
    overwrite;
    tags;
    tags_all;
    tier;
    type_;
    value;
  }

type t = {
  allowed_pattern : string prop;
  arn : string prop;
  data_type : string prop;
  description : string prop;
  id : string prop;
  insecure_value : string prop;
  key_id : string prop;
  name : string prop;
  overwrite : bool prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  tier : string prop;
  type_ : string prop;
  value : string prop;
  version : float prop;
}

let make ?allowed_pattern ?arn ?data_type ?description ?id
    ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier ?value
    ~name ~type_ __id =
  let __type = "aws_ssm_parameter" in
  let __attrs =
    ({
       allowed_pattern = Prop.computed __type __id "allowed_pattern";
       arn = Prop.computed __type __id "arn";
       data_type = Prop.computed __type __id "data_type";
       description = Prop.computed __type __id "description";
       id = Prop.computed __type __id "id";
       insecure_value = Prop.computed __type __id "insecure_value";
       key_id = Prop.computed __type __id "key_id";
       name = Prop.computed __type __id "name";
       overwrite = Prop.computed __type __id "overwrite";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       tier = Prop.computed __type __id "tier";
       type_ = Prop.computed __type __id "type";
       value = Prop.computed __type __id "value";
       version = Prop.computed __type __id "version";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ssm_parameter
        (aws_ssm_parameter ?allowed_pattern ?arn ?data_type
           ?description ?id ?insecure_value ?key_id ?overwrite ?tags
           ?tags_all ?tier ?value ~name ~type_ ());
    attrs = __attrs;
  }

let register ?tf_module ?allowed_pattern ?arn ?data_type ?description
    ?id ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier
    ?value ~name ~type_ __id =
  let (r : _ Tf_core.resource) =
    make ?allowed_pattern ?arn ?data_type ?description ?id
      ?insecure_value ?key_id ?overwrite ?tags ?tags_all ?tier ?value
      ~name ~type_ __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
