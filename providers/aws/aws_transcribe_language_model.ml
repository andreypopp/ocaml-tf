(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type input_data_config = {
  data_access_role_arn : string prop;
  s3_uri : string prop;
  tuning_data_s3_uri : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : input_data_config) -> ()

let yojson_of_input_data_config =
  (function
   | {
       data_access_role_arn = v_data_access_role_arn;
       s3_uri = v_s3_uri;
       tuning_data_s3_uri = v_tuning_data_s3_uri;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_tuning_data_s3_uri with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "tuning_data_s3_uri", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_s3_uri in
         ("s3_uri", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_data_access_role_arn
         in
         ("data_access_role_arn", arg) :: bnds
       in
       `Assoc bnds
    : input_data_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_input_data_config

[@@@deriving.end]

type timeouts = { create : string prop option [@option] }
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_transcribe_language_model = {
  base_model_name : string prop;
  id : string prop option; [@option]
  language_code : string prop;
  model_name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  input_data_config : input_data_config list;
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_transcribe_language_model) -> ()

let yojson_of_aws_transcribe_language_model =
  (function
   | {
       base_model_name = v_base_model_name;
       id = v_id;
       language_code = v_language_code;
       model_name = v_model_name;
       tags = v_tags;
       tags_all = v_tags_all;
       input_data_config = v_input_data_config;
       timeouts = v_timeouts;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_input_data_config
             v_input_data_config
         in
         ("input_data_config", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_model_name in
         ("model_name", arg) :: bnds
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
           yojson_of_prop yojson_of_string v_base_model_name
         in
         ("base_model_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_transcribe_language_model ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_transcribe_language_model

[@@@deriving.end]

let input_data_config ?tuning_data_s3_uri ~data_access_role_arn
    ~s3_uri () : input_data_config =
  { data_access_role_arn; s3_uri; tuning_data_s3_uri }

let timeouts ?create () : timeouts = { create }

let aws_transcribe_language_model ?id ?tags ?tags_all ?timeouts
    ~base_model_name ~language_code ~model_name ~input_data_config ()
    : aws_transcribe_language_model =
  {
    base_model_name;
    id;
    language_code;
    model_name;
    tags;
    tags_all;
    input_data_config;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  base_model_name : string prop;
  id : string prop;
  language_code : string prop;
  model_name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?timeouts ~base_model_name
    ~language_code ~model_name ~input_data_config __id =
  let __type = "aws_transcribe_language_model" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       base_model_name = Prop.computed __type __id "base_model_name";
       id = Prop.computed __type __id "id";
       language_code = Prop.computed __type __id "language_code";
       model_name = Prop.computed __type __id "model_name";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_transcribe_language_model
        (aws_transcribe_language_model ?id ?tags ?tags_all ?timeouts
           ~base_model_name ~language_code ~model_name
           ~input_data_config ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?timeouts
    ~base_model_name ~language_code ~model_name ~input_data_config
    __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?timeouts ~base_model_name
      ~language_code ~model_name ~input_data_config __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
