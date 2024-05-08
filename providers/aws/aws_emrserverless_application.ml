(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type auto_start_configuration = {
  enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_start_configuration) -> ()

let yojson_of_auto_start_configuration =
  (function
   | { enabled = v_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_start_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_start_configuration

[@@@deriving.end]

type auto_stop_configuration = {
  enabled : bool prop option; [@option]
  idle_timeout_minutes : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : auto_stop_configuration) -> ()

let yojson_of_auto_stop_configuration =
  (function
   | {
       enabled = v_enabled;
       idle_timeout_minutes = v_idle_timeout_minutes;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_idle_timeout_minutes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "idle_timeout_minutes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : auto_stop_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_auto_stop_configuration

[@@@deriving.end]

type image_configuration = { image_uri : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : image_configuration) -> ()

let yojson_of_image_configuration =
  (function
   | { image_uri = v_image_uri } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_image_uri in
         ("image_uri", arg) :: bnds
       in
       `Assoc bnds
    : image_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_image_configuration

[@@@deriving.end]

type initial_capacity__initial_capacity_config__worker_configuration = {
  cpu : string prop;
  disk : string prop option; [@option]
  memory : string prop;
}
[@@deriving_inline yojson_of]

let _ =
 fun (_ :
       initial_capacity__initial_capacity_config__worker_configuration) ->
  ()

let yojson_of_initial_capacity__initial_capacity_config__worker_configuration
    =
  (function
   | { cpu = v_cpu; disk = v_disk; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         match v_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cpu in
         ("cpu", arg) :: bnds
       in
       `Assoc bnds
    : initial_capacity__initial_capacity_config__worker_configuration ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ =
  yojson_of_initial_capacity__initial_capacity_config__worker_configuration

[@@@deriving.end]

type initial_capacity__initial_capacity_config = {
  worker_count : float prop;
  worker_configuration :
    initial_capacity__initial_capacity_config__worker_configuration
    list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_capacity__initial_capacity_config) -> ()

let yojson_of_initial_capacity__initial_capacity_config =
  (function
   | {
       worker_count = v_worker_count;
       worker_configuration = v_worker_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_worker_configuration then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_initial_capacity__initial_capacity_config__worker_configuration)
               v_worker_configuration
           in
           let bnd = "worker_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_float v_worker_count in
         ("worker_count", arg) :: bnds
       in
       `Assoc bnds
    : initial_capacity__initial_capacity_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_capacity__initial_capacity_config

[@@@deriving.end]

type initial_capacity = {
  initial_capacity_type : string prop;
  initial_capacity_config :
    initial_capacity__initial_capacity_config list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : initial_capacity) -> ()

let yojson_of_initial_capacity =
  (function
   | {
       initial_capacity_type = v_initial_capacity_type;
       initial_capacity_config = v_initial_capacity_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_initial_capacity_config then bnds
         else
           let arg =
             (yojson_of_list
                yojson_of_initial_capacity__initial_capacity_config)
               v_initial_capacity_config
           in
           let bnd = "initial_capacity_config", arg in
           bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_initial_capacity_type
         in
         ("initial_capacity_type", arg) :: bnds
       in
       `Assoc bnds
    : initial_capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_initial_capacity

[@@@deriving.end]

type maximum_capacity = {
  cpu : string prop;
  disk : string prop option; [@option]
  memory : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : maximum_capacity) -> ()

let yojson_of_maximum_capacity =
  (function
   | { cpu = v_cpu; disk = v_disk; memory = v_memory } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_memory in
         ("memory", arg) :: bnds
       in
       let bnds =
         match v_disk with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "disk", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_cpu in
         ("cpu", arg) :: bnds
       in
       `Assoc bnds
    : maximum_capacity -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_maximum_capacity

[@@@deriving.end]

type network_configuration = {
  security_group_ids : string prop list option; [@option]
  subnet_ids : string prop list option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : network_configuration) -> ()

let yojson_of_network_configuration =
  (function
   | {
       security_group_ids = v_security_group_ids;
       subnet_ids = v_subnet_ids;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_subnet_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
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
       `Assoc bnds
    : network_configuration -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_network_configuration

[@@@deriving.end]

type aws_emrserverless_application = {
  architecture : string prop option; [@option]
  id : string prop option; [@option]
  name : string prop;
  release_label : string prop;
  tags : (string * string prop) list option; [@option]
  tags_all : (string * string prop) list option; [@option]
  type_ : string prop; [@key "type"]
  auto_start_configuration : auto_start_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  auto_stop_configuration : auto_stop_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  image_configuration : image_configuration list;
      [@default []] [@yojson_drop_default ( = )]
  initial_capacity : initial_capacity list;
      [@default []] [@yojson_drop_default ( = )]
  maximum_capacity : maximum_capacity list;
      [@default []] [@yojson_drop_default ( = )]
  network_configuration : network_configuration list;
      [@default []] [@yojson_drop_default ( = )]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : aws_emrserverless_application) -> ()

let yojson_of_aws_emrserverless_application =
  (function
   | {
       architecture = v_architecture;
       id = v_id;
       name = v_name;
       release_label = v_release_label;
       tags = v_tags;
       tags_all = v_tags_all;
       type_ = v_type_;
       auto_start_configuration = v_auto_start_configuration;
       auto_stop_configuration = v_auto_stop_configuration;
       image_configuration = v_image_configuration;
       initial_capacity = v_initial_capacity;
       maximum_capacity = v_maximum_capacity;
       network_configuration = v_network_configuration;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         if [] = v_network_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_network_configuration)
               v_network_configuration
           in
           let bnd = "network_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_maximum_capacity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_maximum_capacity)
               v_maximum_capacity
           in
           let bnd = "maximum_capacity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_initial_capacity then bnds
         else
           let arg =
             (yojson_of_list yojson_of_initial_capacity)
               v_initial_capacity
           in
           let bnd = "initial_capacity", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_image_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_image_configuration)
               v_image_configuration
           in
           let bnd = "image_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_auto_stop_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_stop_configuration)
               v_auto_stop_configuration
           in
           let bnd = "auto_stop_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         if [] = v_auto_start_configuration then bnds
         else
           let arg =
             (yojson_of_list yojson_of_auto_start_configuration)
               v_auto_start_configuration
           in
           let bnd = "auto_start_configuration", arg in
           bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_type_ in
         ("type", arg) :: bnds
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
         let arg = yojson_of_prop yojson_of_string v_release_label in
         ("release_label", arg) :: bnds
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
         match v_architecture with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "architecture", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : aws_emrserverless_application ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_aws_emrserverless_application

[@@@deriving.end]

let auto_start_configuration ?enabled () : auto_start_configuration =
  { enabled }

let auto_stop_configuration ?enabled ?idle_timeout_minutes () :
    auto_stop_configuration =
  { enabled; idle_timeout_minutes }

let image_configuration ~image_uri () : image_configuration =
  { image_uri }

let initial_capacity__initial_capacity_config__worker_configuration
    ?disk ~cpu ~memory () :
    initial_capacity__initial_capacity_config__worker_configuration =
  { cpu; disk; memory }

let initial_capacity__initial_capacity_config
    ?(worker_configuration = []) ~worker_count () :
    initial_capacity__initial_capacity_config =
  { worker_count; worker_configuration }

let initial_capacity ?(initial_capacity_config = [])
    ~initial_capacity_type () : initial_capacity =
  { initial_capacity_type; initial_capacity_config }

let maximum_capacity ?disk ~cpu ~memory () : maximum_capacity =
  { cpu; disk; memory }

let network_configuration ?security_group_ids ?subnet_ids () :
    network_configuration =
  { security_group_ids; subnet_ids }

let aws_emrserverless_application ?architecture ?id ?tags ?tags_all
    ?(auto_start_configuration = []) ?(auto_stop_configuration = [])
    ?(image_configuration = []) ?(maximum_capacity = [])
    ?(network_configuration = []) ~name ~release_label ~type_
    ~initial_capacity () : aws_emrserverless_application =
  {
    architecture;
    id;
    name;
    release_label;
    tags;
    tags_all;
    type_;
    auto_start_configuration;
    auto_stop_configuration;
    image_configuration;
    initial_capacity;
    maximum_capacity;
    network_configuration;
  }

type t = {
  tf_name : string;
  architecture : string prop;
  arn : string prop;
  id : string prop;
  name : string prop;
  release_label : string prop;
  tags : (string * string) list prop;
  tags_all : (string * string) list prop;
  type_ : string prop;
}

let make ?architecture ?id ?tags ?tags_all
    ?(auto_start_configuration = []) ?(auto_stop_configuration = [])
    ?(image_configuration = []) ?(maximum_capacity = [])
    ?(network_configuration = []) ~name ~release_label ~type_
    ~initial_capacity __id =
  let __type = "aws_emrserverless_application" in
  let __attrs =
    ({
       tf_name = __id;
       architecture = Prop.computed __type __id "architecture";
       arn = Prop.computed __type __id "arn";
       id = Prop.computed __type __id "id";
       name = Prop.computed __type __id "name";
       release_label = Prop.computed __type __id "release_label";
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
      yojson_of_aws_emrserverless_application
        (aws_emrserverless_application ?architecture ?id ?tags
           ?tags_all ~auto_start_configuration
           ~auto_stop_configuration ~image_configuration
           ~maximum_capacity ~network_configuration ~name
           ~release_label ~type_ ~initial_capacity ());
    attrs = __attrs;
  }

let register ?tf_module ?architecture ?id ?tags ?tags_all
    ?(auto_start_configuration = []) ?(auto_stop_configuration = [])
    ?(image_configuration = []) ?(maximum_capacity = [])
    ?(network_configuration = []) ~name ~release_label ~type_
    ~initial_capacity __id =
  let (r : _ Tf_core.resource) =
    make ?architecture ?id ?tags ?tags_all ~auto_start_configuration
      ~auto_stop_configuration ~image_configuration ~maximum_capacity
      ~network_configuration ~name ~release_label ~type_
      ~initial_capacity __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
