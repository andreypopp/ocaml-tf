(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_data_config__augmented_manifests = {
  annotation_data_s3_uri : string prop option; [@option]
  attribute_names : string prop list;
  document_type : string prop option; [@option]
  s3_uri : string prop;
  source_documents_s3_uri : string prop option; [@option]
  split : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_data_config__augmented_manifests) -> ()

let yojson_of_input_data_config__augmented_manifests =
  (function
   | {
       annotation_data_s3_uri = v_annotation_data_s3_uri;
       attribute_names = v_attribute_names;
       document_type = v_document_type;
       s3_uri = v_s3_uri;
       source_documents_s3_uri = v_source_documents_s3_uri;
       split = v_split;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_split with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "split", arg in
             bnd :: bnds
       in
       let bnds =
         match v_source_documents_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "source_documents_s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         match v_document_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "document_type", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_attribute_names
         in
         ("attribute_names", arg) :: bnds
       in
       let bnds =
         match v_annotation_data_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "annotation_data_s3_uri", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_data_config__augmented_manifests ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_data_config__augmented_manifests

[@@@deriving.end]

type input_data_config = {
  data_format : string prop option; [@option]
  label_delimiter : string prop option; [@option]
  s3_uri : string prop option; [@option]
  test_s3_uri : string prop option; [@option]
  augmented_manifests : input_data_config__augmented_manifests list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_data_config) -> ()

let yojson_of_input_data_config =
  (function
   | {
       data_format = v_data_format;
       label_delimiter = v_label_delimiter;
       s3_uri = v_s3_uri;
       test_s3_uri = v_test_s3_uri;
       augmented_manifests = v_augmented_manifests;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_input_data_config__augmented_manifests
             v_augmented_manifests
         in
         ("augmented_manifests", arg) :: bnds
       in
       let bnds =
         match v_test_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "test_s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         match v_label_delimiter with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "label_delimiter", arg in
             bnd :: bnds
       in
       let bnds =
         match v_data_format with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "data_format", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : input_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_data_config

[@@@deriving.end]

type output_data_config = {
  kms_key_id : string prop option; [@option]
  s3_uri : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : output_data_config) -> ()

let yojson_of_output_data_config =
  (function
   | { kms_key_id = v_kms_key_id; s3_uri = v_s3_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         match v_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kms_key_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : output_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_output_data_config

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete; update = v_update } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_update with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "update", arg in
             bnd :: bnds
       in
       let bnds =
         match v_delete with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "delete", arg in
             bnd :: bnds
       in
       let bnds =
         match v_create with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "create", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : timeouts -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_timeouts

[@@@deriving.end]

type vpc_config = {
  security_group_ids : string prop list;
  subnets : string prop list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : vpc_config) -> ()

let yojson_of_vpc_config =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnets = v_subnets;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list (yojson_of_prop yojson_of_string) v_subnets
         in
         ("subnets", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_security_group_ids
         in
         ("security_group_ids", arg) :: bnds
       in
       `Assoc bnds
    : vpc_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_vpc_config

[@@@deriving.end]

type aws_comprehend_document_classifier = {
  data_access_role_arn : string prop;
  id : string prop option; [@option]
  language_code : string prop;
  mode : string prop option; [@option]
  model_kms_key_id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  version_name : string prop option; [@option]
  version_name_prefix : string prop option; [@option]
  volume_kms_key_id : string prop option; [@option]
  input_data_config : input_data_config list;
  output_data_config : output_data_config list;
  timeouts : timeouts option;
  vpc_config : vpc_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_comprehend_document_classifier) -> ()

let yojson_of_aws_comprehend_document_classifier =
  (function
   | {
       data_access_role_arn = v_data_access_role_arn;
       id = v_id;
       language_code = v_language_code;
       mode = v_mode;
       model_kms_key_id = v_model_kms_key_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       version_name = v_version_name;
       version_name_prefix = v_version_name_prefix;
       volume_kms_key_id = v_volume_kms_key_id;
       input_data_config = v_input_data_config;
       output_data_config = v_output_data_config;
       timeouts = v_timeouts;
       vpc_config = v_vpc_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_vpc_config v_vpc_config
         in
         ("vpc_config", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_output_data_config
             v_output_data_config
         in
         ("output_data_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_data_config
             v_input_data_config
         in
         ("input_data_config", arg) :: bnds
       in
       let bnds =
         match v_volume_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "volume_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_name_prefix with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_name_prefix", arg in
             bnd :: bnds
       in
       let bnds =
         match v_version_name with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "version_name", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags_all with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags_all", arg in
             bnd :: bnds
       in
       let bnds =
         match v_tags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list
                 (function
                   | v0, v1 ->
                       let v0 = yojson_of_string v0
                       and v1 = yojson_of_prop yojson_of_string v1 in
                       `List [ v0; v1 ])
                 v
             in
             let bnd = "tags", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_model_kms_key_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "model_kms_key_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_language_code in
         ("language_code", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_access_role_arn
         in
         ("data_access_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : aws_comprehend_document_classifier ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_comprehend_document_classifier

[@@@deriving.end]

let input_data_config__augmented_manifests ?annotation_data_s3_uri
    ?document_type ?source_documents_s3_uri ?split ~attribute_names
    ~s3_uri () : input_data_config__augmented_manifests =
  {
    annotation_data_s3_uri;
    attribute_names;
    document_type;
    s3_uri;
    source_documents_s3_uri;
    split;
  }

let input_data_config ?data_format ?label_delimiter ?s3_uri
    ?test_s3_uri ~augmented_manifests () : input_data_config =
  {
    data_format;
    label_delimiter;
    s3_uri;
    test_s3_uri;
    augmented_manifests;
  }

let output_data_config ?kms_key_id ~s3_uri () : output_data_config =
  { kms_key_id; s3_uri }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let vpc_config ~security_group_ids ~subnets () : vpc_config =
  { security_group_ids; subnets }

let aws_comprehend_document_classifier ?id ?mode ?model_kms_key_id
    ?tags ?tags_all ?version_name ?version_name_prefix
    ?volume_kms_key_id ?(output_data_config = []) ?timeouts
    ?(vpc_config = []) ~data_access_role_arn ~language_code ~name
    ~input_data_config () : aws_comprehend_document_classifier =
  {
    data_access_role_arn;
    id;
    language_code;
    mode;
    model_kms_key_id;
    name;
    tags;
    tags_all;
    version_name;
    version_name_prefix;
    volume_kms_key_id;
    input_data_config;
    output_data_config;
    timeouts;
    vpc_config;
  }

type t = {
  arn : string prop;
  data_access_role_arn : string prop;
  id : string prop;
  language_code : string prop;
  mode : string prop;
  model_kms_key_id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  version_name : string prop;
  version_name_prefix : string prop;
  volume_kms_key_id : string prop;
}

let make ?id ?mode ?model_kms_key_id ?tags ?tags_all ?version_name
    ?version_name_prefix ?volume_kms_key_id
    ?(output_data_config = []) ?timeouts ?(vpc_config = [])
    ~data_access_role_arn ~language_code ~name ~input_data_config
    __id =
  let __type = "aws_comprehend_document_classifier" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       data_access_role_arn =
         Prop.computed __type __id "data_access_role_arn";
       id = Prop.computed __type __id "id";
       language_code = Prop.computed __type __id "language_code";
       mode = Prop.computed __type __id "mode";
       model_kms_key_id =
         Prop.computed __type __id "model_kms_key_id";
       name = Prop.computed __type __id "name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       version_name = Prop.computed __type __id "version_name";
       version_name_prefix =
         Prop.computed __type __id "version_name_prefix";
       volume_kms_key_id =
         Prop.computed __type __id "volume_kms_key_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_comprehend_document_classifier
        (aws_comprehend_document_classifier ?id ?mode
           ?model_kms_key_id ?tags ?tags_all ?version_name
           ?version_name_prefix ?volume_kms_key_id
           ~output_data_config ?timeouts ~vpc_config
           ~data_access_role_arn ~language_code ~name
           ~input_data_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?mode ?model_kms_key_id ?tags ?tags_all
    ?version_name ?version_name_prefix ?volume_kms_key_id
    ?(output_data_config = []) ?timeouts ?(vpc_config = [])
    ~data_access_role_arn ~language_code ~name ~input_data_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?mode ?model_kms_key_id ?tags ?tags_all ?version_name
      ?version_name_prefix ?volume_kms_key_id ~output_data_config
      ?timeouts ~vpc_config ~data_access_role_arn ~language_code
      ~name ~input_data_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
