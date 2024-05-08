(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type notification = {
  events : string prop list;
      [@default []] [@yojson_drop_default ( = )]
  sns_topic : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : notification) -> ()

let yojson_of_notification =
  (function
   | { events = v_events; sns_topic = v_sns_topic } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_sns_topic in
         ("sns_topic", arg) :: bnds
       in
       let bnds =
         if [] = v_events then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_events
           in
           let bnd = "events", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : notification -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_notification

[@@@deriving.end]

type aws_glacier_vault = {
  access_policy : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  notification : notification list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_glacier_vault) -> ()

let yojson_of_aws_glacier_vault =
  (function
   | {
       access_policy = v_access_policy;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       notification = v_notification;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_notification then bnds
         else
           let arg =
             (yojson_of_list yojson_of_notification) v_notification
           in
           let bnd = "notification", arg in
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
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_access_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "access_policy", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_glacier_vault -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_glacier_vault

[@@@deriving.end]

let notification ~events ~sns_topic () : notification =
  { events; sns_topic }

let aws_glacier_vault ?access_policy ?id ?tags ?tags_all
    ?(notification = []) ~name () : aws_glacier_vault =
  { access_policy; id; name; tags; tags_all; notification }

type t = {
  tf_name : string;
  access_policy : string prop;
  arn : string prop;
  id : string prop;
  location : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?access_policy ?id ?tags ?tags_all ?(notification = [])
    ~name __id =
  let __type = "aws_glacier_vault" in
  let __attrs =
    ({
       tf_name = __id;
       access_policy = Prop.computed __type __id "access_policy";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       location = Prop.computed __type __id "location";
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
      yojson_of_aws_glacier_vault
        (aws_glacier_vault ?access_policy ?id ?tags ?tags_all
           ~notification ~name ());
    attrs = __attrs;
  }

let register ?tf_module ?access_policy ?id ?tags ?tags_all
    ?(notification = []) ~name __id =
  let (r : _ Tf_core.resource) =
    make ?access_policy ?id ?tags ?tags_all ~notification ~name __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
