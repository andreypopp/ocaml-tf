(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type replication_configuration__rule__destination = {
  region : string prop;
  registry_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration__rule__destination) -> ()

let yojson_of_replication_configuration__rule__destination =
  (function
   | { region = v_region; registry_id = v_registry_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_registry_id in
         ("registry_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_region in
         ("region", arg) :: bnds
       in
       `Assoc bnds
    : replication_configuration__rule__destination ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rule__destination

[@@@deriving.end]

type replication_configuration__rule__repository_filter = {
  filter : string prop;
  filter_type : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ : replication_configuration__rule__repository_filter) -> ()

let yojson_of_replication_configuration__rule__repository_filter =
  (function
   | { filter = v_filter; filter_type = v_filter_type } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter_type in
         ("filter_type", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_filter in
         ("filter", arg) :: bnds
       in
       `Assoc bnds
    : replication_configuration__rule__repository_filter ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rule__repository_filter

[@@@deriving.end]

type replication_configuration__rule = {
  destination : replication_configuration__rule__destination list;
      [@default []] [@yojson_drop_default ( = )]
  repository_filter :
    replication_configuration__rule__repository_filter list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration__rule) -> ()

let yojson_of_replication_configuration__rule =
  (function
   | {
       destination = v_destination;
       repository_filter = v_repository_filter;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_repository_filter then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rule__repository_filter)
               v_repository_filter
           in
           let bnd = "repository_filter", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_destination then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rule__destination)
               v_destination
           in
           let bnd = "destination", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration__rule ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration__rule

[@@@deriving.end]

type replication_configuration = {
  rule : replication_configuration__rule list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : replication_configuration) -> ()

let yojson_of_replication_configuration =
  (function
   | { rule = v_rule } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_rule then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_replication_configuration__rule)
               v_rule
           in
           let bnd = "rule", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : replication_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_replication_configuration

[@@@deriving.end]

type aws_ecr_replication_configuration = {
  id : string prop option; [@option]
  replication_configuration : replication_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_ecr_replication_configuration) -> ()

let yojson_of_aws_ecr_replication_configuration =
  (function
   | {
       id = v_id;
       replication_configuration = v_replication_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_replication_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_replication_configuration)
               v_replication_configuration
           in
           let bnd = "replication_configuration", arg in
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
       `Assoc bnds
    : aws_ecr_replication_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_ecr_replication_configuration

[@@@deriving.end]

let replication_configuration__rule__destination ~region ~registry_id
    () : replication_configuration__rule__destination =
  { region; registry_id }

let replication_configuration__rule__repository_filter ~filter
    ~filter_type () :
    replication_configuration__rule__repository_filter =
  { filter; filter_type }

let replication_configuration__rule ?(repository_filter = [])
    ~destination () : replication_configuration__rule =
  { destination; repository_filter }

let replication_configuration ~rule () : replication_configuration =
  { rule }

let aws_ecr_replication_configuration ?id
    ?(replication_configuration = []) () :
    aws_ecr_replication_configuration =
  { id; replication_configuration }

type t = {
  tf_name : string;
  id : string prop;
  registry_id : string prop;
}

let make ?id ?(replication_configuration = []) __id =
  let __type = "aws_ecr_replication_configuration" in
  let __attrs =
    ({
       tf_name = __id;
       id = Prop.computed __type __id "id";
       registry_id = Prop.computed __type __id "registry_id";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_ecr_replication_configuration
        (aws_ecr_replication_configuration ?id
           ~replication_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?id ?(replication_configuration = []) __id =
  let (r : _ Tf_core.resource) =
    make ?id ~replication_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
