(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type link_configuration__log_group_configuration = {
  filter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link_configuration__log_group_configuration) -> ()

let yojson_of_link_configuration__log_group_configuration =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : link_configuration__log_group_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link_configuration__log_group_configuration

[@@@deriving.end]

type link_configuration__metric_configuration = {
  filter : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link_configuration__metric_configuration) -> ()

let yojson_of_link_configuration__metric_configuration =
  (function
   | { filter = v_filter } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : link_configuration__metric_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link_configuration__metric_configuration

[@@@deriving.end]

type link_configuration = {
  log_group_configuration :
    link_configuration__log_group_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  metric_configuration :
    link_configuration__metric_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : link_configuration) -> ()

let yojson_of_link_configuration =
  (function
   | {
       log_group_configuration = v_log_group_configuration;
       metric_configuration = v_metric_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_metric_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_link_configuration__metric_configuration)
               v_metric_configuration
           in
           let bnd = "metric_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_log_group_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_link_configuration__log_group_configuration)
               v_log_group_configuration
           in
           let bnd = "log_group_configuration", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : link_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_link_configuration

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

type aws_oam_link = {
  id : string prop option; [@option]
  label_template : string prop;
  resource_types : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  sink_identifier : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  link_configuration : link_configuration list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_oam_link) -> ()

let yojson_of_aws_oam_link =
  (function
   | {
       id = v_id;
       label_template = v_label_template;
       resource_types = v_resource_types;
       sink_identifier = v_sink_identifier;
       tags = v_tags;
       tags_all = v_tags_all;
       link_configuration = v_link_configuration;
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
         if Stdlib.( = ) [] v_link_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_link_configuration)
               v_link_configuration
           in
           let bnd = "link_configuration", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_sink_identifier
         in
         ("sink_identifier", arg) :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_resource_types then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_resource_types
           in
           let bnd = "resource_types", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_label_template
         in
         ("label_template", arg) :: bnds
       in
       let bnds =
         match v_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_oam_link -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_oam_link

[@@@deriving.end]

let link_configuration__log_group_configuration ~filter () :
    link_configuration__log_group_configuration =
  { filter }

let link_configuration__metric_configuration ~filter () :
    link_configuration__metric_configuration =
  { filter }

let link_configuration ?(log_group_configuration = [])
    ?(metric_configuration = []) () : link_configuration =
  { log_group_configuration; metric_configuration }

let timeouts ?create ?delete ?update () : timeouts =
  { create; delete; update }

let aws_oam_link ?id ?tags ?tags_all ?(link_configuration = [])
    ?timeouts ~label_template ~resource_types ~sink_identifier () :
    aws_oam_link =
  {
    id;
    label_template;
    resource_types;
    sink_identifier;
    tags;
    tags_all;
    link_configuration;
    timeouts;
  }

type t = {
  tf_name : string;
  arn : string prop;
  id : string prop;
  label : string prop;
  label_template : string prop;
  link_id : string prop;
  resource_types : string list prop;
  sink_arn : string prop;
  sink_identifier : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?id ?tags ?tags_all ?(link_configuration = []) ?timeouts
    ~label_template ~resource_types ~sink_identifier __id =
  let __type = "aws_oam_link" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       label = Prop.computed __type __id "label";
       label_template = Prop.computed __type __id "label_template";
       link_id = Prop.computed __type __id "link_id";
       resource_types = Prop.computed __type __id "resource_types";
       sink_arn = Prop.computed __type __id "sink_arn";
       sink_identifier = Prop.computed __type __id "sink_identifier";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_oam_link
        (aws_oam_link ?id ?tags ?tags_all ~link_configuration
           ?timeouts ~label_template ~resource_types ~sink_identifier
           ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?tags ?tags_all
    ?(link_configuration = []) ?timeouts ~label_template
    ~resource_types ~sink_identifier __id =
  let (r : _ Tf_core.resource) =
    make ?id ?tags ?tags_all ~link_configuration ?timeouts
      ~label_template ~resource_types ~sink_identifier __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
