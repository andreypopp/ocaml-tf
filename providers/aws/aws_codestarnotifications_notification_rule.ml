(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type target = {
  address : string prop;
  type_ : string prop option; [@option] [@key "type"]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : target) -> ()

let yojson_of_target =
  (function
   | { address = v_address; type_ = v_type_ } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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
         let arg = yojson_of_prop yojson_of_string v_address in
         ("address", arg) :: bnds
       in
       `Assoc bnds
    : target -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_target

[@@@deriving.end]

type aws_codestarnotifications_notification_rule = {
  detail_type : string prop;
  event_type_ids : string prop list;
  id : string prop option; [@option]
  name : string prop;
  resource : string prop;
  status : string prop option; [@option]
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  target : target list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_codestarnotifications_notification_rule) -> ()

let yojson_of_aws_codestarnotifications_notification_rule =
  (function
   | {
       detail_type = v_detail_type;
       event_type_ids = v_event_type_ids;
       id = v_id;
       name = v_name;
       resource = v_resource;
       status = v_status;
       tags = v_tags;
       tags_all = v_tags_all;
       target = v_target;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_list yojson_of_target v_target in
         ("target", arg) :: bnds
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
         match v_status with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "status", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_resource in
         ("resource", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
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
           yojson_of_list
             (yojson_of_prop yojson_of_string)
             v_event_type_ids
         in
         ("event_type_ids", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_detail_type in
         ("detail_type", arg) :: bnds
       in
       `Assoc bnds
    : aws_codestarnotifications_notification_rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_codestarnotifications_notification_rule

[@@@deriving.end]

let target ?type_ ~address () : target = { address; type_ }

let aws_codestarnotifications_notification_rule ?id ?status ?tags
    ?tags_all ~detail_type ~event_type_ids ~name ~resource ~target ()
    : aws_codestarnotifications_notification_rule =
  {
    detail_type;
    event_type_ids;
    id;
    name;
    resource;
    status;
    tags;
    tags_all;
    target;
  }

type t = {
  arn : string prop;
  detail_type : string prop;
  event_type_ids : string list prop;
  id : string prop;
  name : string prop;
  resource : string prop;
  status : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?status ?tags ?tags_all ~detail_type ~event_type_ids
    ~name ~resource ~target __id =
  let __type = "aws_codestarnotifications_notification_rule" in
  let __attrs =
    ({
       arn = Prop.computed __type __id "arn";
       detail_type = Prop.computed __type __id "detail_type";
       event_type_ids = Prop.computed __type __id "event_type_ids";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       resource = Prop.computed __type __id "resource";
       status = Prop.computed __type __id "status";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_codestarnotifications_notification_rule
        (aws_codestarnotifications_notification_rule ?id ?status
           ?tags ?tags_all ~detail_type ~event_type_ids ~name
           ~resource ~target ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?status ?tags ?tags_all ~detail_type
    ~event_type_ids ~name ~resource ~target __id =
  let (r : _ Tf_core.resource) =
    make ?id ?status ?tags ?tags_all ~detail_type ~event_type_ids
      ~name ~resource ~target __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
