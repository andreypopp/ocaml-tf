(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type analytics_engine_binding = {
  dataset : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : analytics_engine_binding) -> ()

let yojson_of_analytics_engine_binding =
  (function
   | { dataset = v_dataset; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_dataset in
         ("dataset", arg) :: bnds
       in
       `Assoc bnds
    : analytics_engine_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_analytics_engine_binding

[@@@deriving.end]

type d1_database_binding = {
  database_id : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : d1_database_binding) -> ()

let yojson_of_d1_database_binding =
  (function
   | { database_id = v_database_id; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_database_id in
         ("database_id", arg) :: bnds
       in
       `Assoc bnds
    : d1_database_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_d1_database_binding

[@@@deriving.end]

type kv_namespace_binding = {
  name : string prop;
  namespace_id : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kv_namespace_binding) -> ()

let yojson_of_kv_namespace_binding =
  (function
   | { name = v_name; namespace_id = v_namespace_id } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_namespace_id in
         ("namespace_id", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : kv_namespace_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kv_namespace_binding

[@@@deriving.end]

type placement = { mode : string prop } [@@deriving_inline yojson_of]

let _ = fun (_ : placement) -> ()

let yojson_of_placement =
  (function
   | { mode = v_mode } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_mode in
         ("mode", arg) :: bnds
       in
       `Assoc bnds
    : placement -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_placement

[@@@deriving.end]

type plain_text_binding = { name : string prop; text : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : plain_text_binding) -> ()

let yojson_of_plain_text_binding =
  (function
   | { name = v_name; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : plain_text_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_plain_text_binding

[@@@deriving.end]

type queue_binding = { binding : string prop; queue : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : queue_binding) -> ()

let yojson_of_queue_binding =
  (function
   | { binding = v_binding; queue = v_queue } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_queue in
         ("queue", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_binding in
         ("binding", arg) :: bnds
       in
       `Assoc bnds
    : queue_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_queue_binding

[@@@deriving.end]

type r2_bucket_binding = {
  bucket_name : string prop;
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : r2_bucket_binding) -> ()

let yojson_of_r2_bucket_binding =
  (function
   | { bucket_name = v_bucket_name; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_bucket_name in
         ("bucket_name", arg) :: bnds
       in
       `Assoc bnds
    : r2_bucket_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_r2_bucket_binding

[@@@deriving.end]

type secret_text_binding = { name : string prop; text : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : secret_text_binding) -> ()

let yojson_of_secret_text_binding =
  (function
   | { name = v_name; text = v_text } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_text in
         ("text", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       `Assoc bnds
    : secret_text_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_secret_text_binding

[@@@deriving.end]

type service_binding = {
  environment : string prop option; [@option]
  name : string prop;
  service : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : service_binding) -> ()

let yojson_of_service_binding =
  (function
   | {
       environment = v_environment;
       name = v_name;
       service = v_service;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_service in
         ("service", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_environment with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "environment", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : service_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_service_binding

[@@@deriving.end]

type webassembly_binding = {
  module_ : string prop; [@key "module"]
  name : string prop;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : webassembly_binding) -> ()

let yojson_of_webassembly_binding =
  (function
   | { module_ = v_module_; name = v_name } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_module_ in
         ("module", arg) :: bnds
       in
       `Assoc bnds
    : webassembly_binding -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_webassembly_binding

[@@@deriving.end]

type cloudflare_worker_script = {
  account_id : string prop;
  compatibility_date : string prop option; [@option]
  compatibility_flags : string prop list option; [@option]
  content : string prop;
  id : string prop option; [@option]
  logpush : bool prop option; [@option]
  module_ : bool prop option; [@option] [@key "module"]
  name : string prop;
  analytics_engine_binding : analytics_engine_binding list;
  d1_database_binding : d1_database_binding list;
  kv_namespace_binding : kv_namespace_binding list;
  placement : placement list;
  plain_text_binding : plain_text_binding list;
  queue_binding : queue_binding list;
  r2_bucket_binding : r2_bucket_binding list;
  secret_text_binding : secret_text_binding list;
  service_binding : service_binding list;
  webassembly_binding : webassembly_binding list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : cloudflare_worker_script) -> ()

let yojson_of_cloudflare_worker_script =
  (function
   | {
       account_id = v_account_id;
       compatibility_date = v_compatibility_date;
       compatibility_flags = v_compatibility_flags;
       content = v_content;
       id = v_id;
       logpush = v_logpush;
       module_ = v_module_;
       name = v_name;
       analytics_engine_binding = v_analytics_engine_binding;
       d1_database_binding = v_d1_database_binding;
       kv_namespace_binding = v_kv_namespace_binding;
       placement = v_placement;
       plain_text_binding = v_plain_text_binding;
       queue_binding = v_queue_binding;
       r2_bucket_binding = v_r2_bucket_binding;
       secret_text_binding = v_secret_text_binding;
       service_binding = v_service_binding;
       webassembly_binding = v_webassembly_binding;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_webassembly_binding
             v_webassembly_binding
         in
         ("webassembly_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_service_binding v_service_binding
         in
         ("service_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_secret_text_binding
             v_secret_text_binding
         in
         ("secret_text_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_r2_bucket_binding
             v_r2_bucket_binding
         in
         ("r2_bucket_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_queue_binding v_queue_binding
         in
         ("queue_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_plain_text_binding
             v_plain_text_binding
         in
         ("plain_text_binding", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_list yojson_of_placement v_placement in
         ("placement", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kv_namespace_binding
             v_kv_namespace_binding
         in
         ("kv_namespace_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_d1_database_binding
             v_d1_database_binding
         in
         ("d1_database_binding", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_analytics_engine_binding
             v_analytics_engine_binding
         in
         ("analytics_engine_binding", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_module_ with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "module", arg in
             bnd :: bnds
       in
       let bnds =
         match v_logpush with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "logpush", arg in
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
         let arg = yojson_of_prop yojson_of_string v_content in
         ("content", arg) :: bnds
       in
       let bnds =
         match v_compatibility_flags with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "compatibility_flags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_compatibility_date with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "compatibility_date", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_account_id in
         ("account_id", arg) :: bnds
       in
       `Assoc bnds
    : cloudflare_worker_script -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_cloudflare_worker_script

[@@@deriving.end]

let analytics_engine_binding ~dataset ~name () :
    analytics_engine_binding =
  { dataset; name }

let d1_database_binding ~database_id ~name () : d1_database_binding =
  { database_id; name }

let kv_namespace_binding ~name ~namespace_id () :
    kv_namespace_binding =
  { name; namespace_id }

let placement ~mode () : placement = { mode }

let plain_text_binding ~name ~text () : plain_text_binding =
  { name; text }

let queue_binding ~binding ~queue () : queue_binding =
  { binding; queue }

let r2_bucket_binding ~bucket_name ~name () : r2_bucket_binding =
  { bucket_name; name }

let secret_text_binding ~name ~text () : secret_text_binding =
  { name; text }

let service_binding ?environment ~name ~service () : service_binding
    =
  { environment; name; service }

let webassembly_binding ~module_ ~name () : webassembly_binding =
  { module_; name }

let cloudflare_worker_script ?compatibility_date ?compatibility_flags
    ?id ?logpush ?module_ ~account_id ~content ~name
    ~analytics_engine_binding ~d1_database_binding
    ~kv_namespace_binding ~placement ~plain_text_binding
    ~queue_binding ~r2_bucket_binding ~secret_text_binding
    ~service_binding ~webassembly_binding () :
    cloudflare_worker_script =
  {
    account_id;
    compatibility_date;
    compatibility_flags;
    content;
    id;
    logpush;
    module_;
    name;
    analytics_engine_binding;
    d1_database_binding;
    kv_namespace_binding;
    placement;
    plain_text_binding;
    queue_binding;
    r2_bucket_binding;
    secret_text_binding;
    service_binding;
    webassembly_binding;
  }

type t = {
  tf_name : string;
  account_id : string prop;
  compatibility_date : string prop;
  compatibility_flags : string list prop;
  content : string prop;
  id : string prop;
  logpush : bool prop;
  module_ : bool prop;
  name : string prop;
}

let make ?compatibility_date ?compatibility_flags ?id ?logpush
    ?module_ ~account_id ~content ~name ~analytics_engine_binding
    ~d1_database_binding ~kv_namespace_binding ~placement
    ~plain_text_binding ~queue_binding ~r2_bucket_binding
    ~secret_text_binding ~service_binding ~webassembly_binding __id =
  let __type = "cloudflare_worker_script" in
  let __attrs =
    ({
       tf_name = __id;
       account_id = Prop.computed __type __id "account_id";
       compatibility_date =
         Prop.computed __type __id "compatibility_date";
       compatibility_flags =
         Prop.computed __type __id "compatibility_flags";
       content = Prop.computed __type __id "content";
       id = Prop.computed __type __id "id";
       logpush = Prop.computed __type __id "logpush";
       module_ = Prop.computed __type __id "module";
       name = Prop.computed __type __id "name";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_cloudflare_worker_script
        (cloudflare_worker_script ?compatibility_date
           ?compatibility_flags ?id ?logpush ?module_ ~account_id
           ~content ~name ~analytics_engine_binding
           ~d1_database_binding ~kv_namespace_binding ~placement
           ~plain_text_binding ~queue_binding ~r2_bucket_binding
           ~secret_text_binding ~service_binding ~webassembly_binding
           ());
    attrs = __attrs;
  }

let register ?tf_module ?compatibility_date ?compatibility_flags ?id
    ?logpush ?module_ ~account_id ~content ~name
    ~analytics_engine_binding ~d1_database_binding
    ~kv_namespace_binding ~placement ~plain_text_binding
    ~queue_binding ~r2_bucket_binding ~secret_text_binding
    ~service_binding ~webassembly_binding __id =
  let (r : _ Tf_core.resource) =
    make ?compatibility_date ?compatibility_flags ?id ?logpush
      ?module_ ~account_id ~content ~name ~analytics_engine_binding
      ~d1_database_binding ~kv_namespace_binding ~placement
      ~plain_text_binding ~queue_binding ~r2_bucket_binding
      ~secret_text_binding ~service_binding ~webassembly_binding __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
