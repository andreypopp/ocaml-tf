(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type destination__amp = { workspace_arn : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : destination__amp) -> ()

let yojson_of_destination__amp =
  (function
   | { workspace_arn = v_workspace_arn } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_workspace_arn in
         ("workspace_arn", arg) :: bnds
       in
       `Assoc bnds
    : destination__amp -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination__amp

[@@@deriving.end]

type destination = {
  amp : destination__amp list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : destination) -> ()

let yojson_of_destination =
  (function
   | { amp = v_amp } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_amp then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination__amp) v_amp
           in
           let bnd = "amp", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : destination -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_destination

[@@@deriving.end]

type source__eks = {
  cluster_arn : string prop;
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source__eks) -> ()

let yojson_of_source__eks =
  (function
   | {
       cluster_arn = v_cluster_arn;
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_subnet_ids then bnds
         else
           let arg =
             (yojson_of_list (yojson_of_prop yojson_of_string))
               v_subnet_ids
           in
           let bnd = "subnet_ids", arg in
           bnd :: bnds
       in
       let bnds =
         match v_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "security_group_ids", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cluster_arn in
         ("cluster_arn", arg) :: bnds
       in
       `Assoc bnds
    : source__eks -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source__eks

[@@@deriving.end]

type source = {
  eks : source__eks list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : source) -> ()

let yojson_of_source =
  (function
   | { eks = v_eks } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if Stdlib.( = ) [] v_eks then bnds
         else
           let arg = (yojson_of_list yojson_of_source__eks) v_eks in
           let bnd = "eks", arg in
           bnd :: bnds
       in
       `Assoc bnds
    : source -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_source

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | { create = v_create; delete = v_delete } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
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

type aws_prometheus_scraper = {
  alias : string prop option; [@option]
  scrape_configuration : string prop;
  tags : (string * string prop) list option; [@option]
  destination : destination list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  source : source list;
      [@default []] [@yojson_drop_default Stdlib.( = )]
  timeouts : timeouts option;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_prometheus_scraper) -> ()

let yojson_of_aws_prometheus_scraper =
  (function
   | {
       alias = v_alias;
       scrape_configuration = v_scrape_configuration;
       tags = v_tags;
       destination = v_destination;
       source = v_source;
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
         if Stdlib.( = ) [] v_source then bnds
         else
           let arg = (yojson_of_list yojson_of_source) v_source in
           let bnd = "source", arg in
           bnd :: bnds
       in
       let bnds =
         if Stdlib.( = ) [] v_destination then bnds
         else
           let arg =
             (yojson_of_list yojson_of_destination) v_destination
           in
           let bnd = "destination", arg in
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
           yojson_of_prop yojson_of_string v_scrape_configuration
         in
         ("scrape_configuration", arg) :: bnds
       in
       let bnds =
         match v_alias with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "alias", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_prometheus_scraper -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_prometheus_scraper

[@@@deriving.end]

let destination__amp ~workspace_arn () : destination__amp =
  { workspace_arn }

let destination ?(amp = []) () : destination = { amp }

let source__eks ?security_group_ids ~cluster_arn ~subnet_ids () :
    source__eks =
  { cluster_arn; security_group_ids; subnet_ids }

let source ?(eks = []) () : source = { eks }
let timeouts ?create ?delete () : timeouts = { create; delete }

let aws_prometheus_scraper ?alias ?tags ?(destination = [])
    ?(source = []) ?timeouts ~scrape_configuration () :
    aws_prometheus_scraper =
  {
    alias;
    scrape_configuration;
    tags;
    destination;
    source;
    timeouts;
  }

type t = {
  tf_name : string;
  alias : string prop;
  arn : string prop;
  id : string prop;
  role_arn : string prop;
  scrape_configuration : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
}

let make ?alias ?tags ?(destination = []) ?(source = []) ?timeouts
    ~scrape_configuration __id =
  let __type = "aws_prometheus_scraper" in
  let __attrs =
    ({
       tf_name = __id;
       alias = Prop.computed __type __id "alias";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       role_arn = Prop.computed __type __id "role_arn";
       scrape_configuration =
         Prop.computed __type __id "scrape_configuration";
       tags = Prop.computed __type __id "tags";
       tags_all = Prop.computed __type __id "tags_all";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_aws_prometheus_scraper
        (aws_prometheus_scraper ?alias ?tags ~destination ~source
           ?timeouts ~scrape_configuration ());
    attrs = __attrs;
  }

let register ?tf_module ?alias ?tags ?(destination = [])
    ?(source = []) ?timeouts ~scrape_configuration __id =
  let (r : _ Tf_core.resource) =
    make ?alias ?tags ~destination ~source ?timeouts
      ~scrape_configuration __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
