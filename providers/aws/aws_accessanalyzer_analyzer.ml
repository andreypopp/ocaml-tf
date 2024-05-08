(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type configuration__unused_access = {
  unused_access_age : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration__unused_access) -> ()

let yojson_of_configuration__unused_access =
  (function
   | { unused_access_age = v_unused_access_age } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_unused_access_age with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "unused_access_age", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : configuration__unused_access ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration__unused_access

[@@@deriving.end]

type configuration = {
  unused_access : configuration__unused_access list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : configuration) -> ()

let yojson_of_configuration =
  (function
   | { unused_access = v_unused_access } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_unused_access then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration__unused_access)
               v_unused_access
           in
           let bnd = "unused_access", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_configuration

[@@@deriving.end]

type aws_accessanalyzer_analyzer = {
  analyzer_name : string prop;
  id : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop option; [@option] [@key "type"]
  configuration : configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_accessanalyzer_analyzer) -> ()

let yojson_of_aws_accessanalyzer_analyzer =
  (function
   | {
       analyzer_name = v_analyzer_name;
       id = v_id;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       configuration = v_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_configuration) v_configuration
           in
           let bnd = "configuration", arg in
           bnd :: bnds
       in
       let bnds =
         match v_type_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "type", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_analyzer_name in
         ("analyzer_name", arg) :: bnds
       in
       `Assoc bnds
    : aws_accessanalyzer_analyzer ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_accessanalyzer_analyzer

[@@@deriving.end]

let configuration__unused_access ?unused_access_age () :
    configuration__unused_access =
  { unused_access_age }

let configuration ?(unused_access = []) () : configuration =
  { unused_access }

let aws_accessanalyzer_analyzer ?id ?tags ?tags_all ?type_
    ?(configuration = []) ~analyzer_name () :
    aws_accessanalyzer_analyzer =
  { analyzer_name; id; tags; tags_all; type_; configuration }

type t = {
  tf_name : string;
  analyzer_name : string prop;
  arn : string prop;
  id : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?id ?tags ?tags_all ?type_ ?(configuration = [])
    ~analyzer_name __id =
  let __type = "aws_accessanalyzer_analyzer" in
  let __attrs =
    ({
       tf_name = __id;
       analyzer_name = Prop.computed __type __id "analyzer_name";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
       type_ = Prop.computed __type __id "type";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_accessanalyzer_analyzer
        (aws_accessanalyzer_analyzer ?id ?tags ?tags_all ?type_
           ~configuration ~analyzer_name ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all ?type_
    ?(configuration = []) ~analyzer_name __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ?type_ ~configuration ~analyzer_name
      __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
