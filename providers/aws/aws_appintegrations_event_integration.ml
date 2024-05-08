(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type event_filter = { source : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : event_filter) -> ()

let yojson_of_event_filter =
  (function
   | { source = v_source } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_source in
         ("source", arg) :: bnds
       in
       `Assoc bnds
    : event_filter -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_event_filter

[@@@deriving.end]

type aws_appintegrations_event_integration = {
  description : string prop option; [@option]
  eventbridge_bus : string prop;
  id : string prop option; [@option]
  name : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  event_filter : event_filter list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_appintegrations_event_integration) -> ()

let yojson_of_aws_appintegrations_event_integration =
  (function
   | {
       description = v_description;
       eventbridge_bus = v_eventbridge_bus;
       id = v_id;
       name = v_name;
       tags = v_tags;
       tags_all = v_tags_all;
       event_filter = v_event_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_event_filter then bnds
         else
           let arg =
             (yojson_of_list yojson_of_event_filter) v_event_filter
           in
           let bnd = "event_filter", arg in
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
         let arg =
           yojson_of_prop yojson_of_string v_eventbridge_bus
         in
         ("eventbridge_bus", arg) :: bnds
       in
       let bnds =
         match v_description with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "description", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_appintegrations_event_integration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_appintegrations_event_integration

[@@@deriving.end]

let event_filter ~source () : event_filter = { source }

let aws_appintegrations_event_integration ?description ?id ?tags
    ?tags_all ~eventbridge_bus ~name ~event_filter () :
    aws_appintegrations_event_integration =
  {
    description;
    eventbridge_bus;
    id;
    name;
    tags;
    tags_all;
    event_filter;
  }

type t = {
  tf_name : string;
  arn : string prop;
  description : string prop;
  eventbridge_bus : string prop;
  id : string prop;
  name : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?description ?id ?tags ?tags_all ~eventbridge_bus ~name
    ~event_filter __id =
  let __type = "aws_appintegrations_event_integration" in
  let __attrs =
    ({
       tf_name = __id;
       arn = Prop.computed __type __id "arn";
       description = Prop.computed __type __id "description";
       eventbridge_bus = Prop.computed __type __id "eventbridge_bus";
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
      yojson_of_aws_appintegrations_event_integration
        (aws_appintegrations_event_integration ?description ?id ?tags
           ?tags_all ~eventbridge_bus ~name ~event_filter ());
    attrs = __attrs;
  }

let register ?tf_module ?description ?id ?tags ?tags_all
    ~eventbridge_bus ~name ~event_filter __id =
  let (r : _ Tf_core.resource) =
    make ?description ?id ?tags ?tags_all ~eventbridge_bus ~name
      ~event_filter __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
