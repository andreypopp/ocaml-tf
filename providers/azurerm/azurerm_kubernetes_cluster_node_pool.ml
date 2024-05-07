(* DO NOT EDIT, GENERATED AUTOMATICALLY *)

open! Tf_core

type kubelet_config = {
  allowed_unsafe_sysctls : string prop list option; [@option]
  container_log_max_line : float prop option; [@option]
  container_log_max_size_mb : float prop option; [@option]
  cpu_cfs_quota_enabled : bool prop option; [@option]
  cpu_cfs_quota_period : string prop option; [@option]
  cpu_manager_policy : string prop option; [@option]
  image_gc_high_threshold : float prop option; [@option]
  image_gc_low_threshold : float prop option; [@option]
  pod_max_pid : float prop option; [@option]
  topology_manager_policy : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : kubelet_config) -> ()

let yojson_of_kubelet_config =
  (function
   | {
       allowed_unsafe_sysctls = v_allowed_unsafe_sysctls;
       container_log_max_line = v_container_log_max_line;
       container_log_max_size_mb = v_container_log_max_size_mb;
       cpu_cfs_quota_enabled = v_cpu_cfs_quota_enabled;
       cpu_cfs_quota_period = v_cpu_cfs_quota_period;
       cpu_manager_policy = v_cpu_manager_policy;
       image_gc_high_threshold = v_image_gc_high_threshold;
       image_gc_low_threshold = v_image_gc_low_threshold;
       pod_max_pid = v_pod_max_pid;
       topology_manager_policy = v_topology_manager_policy;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_topology_manager_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "topology_manager_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_max_pid with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "pod_max_pid", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_gc_low_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_gc_low_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_image_gc_high_threshold with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "image_gc_high_threshold", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_manager_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_manager_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota_period with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "cpu_cfs_quota_period", arg in
             bnd :: bnds
       in
       let bnds =
         match v_cpu_cfs_quota_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "cpu_cfs_quota_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_log_max_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_log_max_size_mb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_container_log_max_line with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "container_log_max_line", arg in
             bnd :: bnds
       in
       let bnds =
         match v_allowed_unsafe_sysctls with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "allowed_unsafe_sysctls", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : kubelet_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_kubelet_config

[@@@deriving.end]

type linux_os_config__sysctl_config = {
  fs_aio_max_nr : float prop option; [@option]
  fs_file_max : float prop option; [@option]
  fs_inotify_max_user_watches : float prop option; [@option]
  fs_nr_open : float prop option; [@option]
  kernel_threads_max : float prop option; [@option]
  net_core_netdev_max_backlog : float prop option; [@option]
  net_core_optmem_max : float prop option; [@option]
  net_core_rmem_default : float prop option; [@option]
  net_core_rmem_max : float prop option; [@option]
  net_core_somaxconn : float prop option; [@option]
  net_core_wmem_default : float prop option; [@option]
  net_core_wmem_max : float prop option; [@option]
  net_ipv4_ip_local_port_range_max : float prop option; [@option]
  net_ipv4_ip_local_port_range_min : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh1 : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh2 : float prop option; [@option]
  net_ipv4_neigh_default_gc_thresh3 : float prop option; [@option]
  net_ipv4_tcp_fin_timeout : float prop option; [@option]
  net_ipv4_tcp_keepalive_intvl : float prop option; [@option]
  net_ipv4_tcp_keepalive_probes : float prop option; [@option]
  net_ipv4_tcp_keepalive_time : float prop option; [@option]
  net_ipv4_tcp_max_syn_backlog : float prop option; [@option]
  net_ipv4_tcp_max_tw_buckets : float prop option; [@option]
  net_ipv4_tcp_tw_reuse : bool prop option; [@option]
  net_netfilter_nf_conntrack_buckets : float prop option; [@option]
  net_netfilter_nf_conntrack_max : float prop option; [@option]
  vm_max_map_count : float prop option; [@option]
  vm_swappiness : float prop option; [@option]
  vm_vfs_cache_pressure : float prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_os_config__sysctl_config) -> ()

let yojson_of_linux_os_config__sysctl_config =
  (function
   | {
       fs_aio_max_nr = v_fs_aio_max_nr;
       fs_file_max = v_fs_file_max;
       fs_inotify_max_user_watches = v_fs_inotify_max_user_watches;
       fs_nr_open = v_fs_nr_open;
       kernel_threads_max = v_kernel_threads_max;
       net_core_netdev_max_backlog = v_net_core_netdev_max_backlog;
       net_core_optmem_max = v_net_core_optmem_max;
       net_core_rmem_default = v_net_core_rmem_default;
       net_core_rmem_max = v_net_core_rmem_max;
       net_core_somaxconn = v_net_core_somaxconn;
       net_core_wmem_default = v_net_core_wmem_default;
       net_core_wmem_max = v_net_core_wmem_max;
       net_ipv4_ip_local_port_range_max =
         v_net_ipv4_ip_local_port_range_max;
       net_ipv4_ip_local_port_range_min =
         v_net_ipv4_ip_local_port_range_min;
       net_ipv4_neigh_default_gc_thresh1 =
         v_net_ipv4_neigh_default_gc_thresh1;
       net_ipv4_neigh_default_gc_thresh2 =
         v_net_ipv4_neigh_default_gc_thresh2;
       net_ipv4_neigh_default_gc_thresh3 =
         v_net_ipv4_neigh_default_gc_thresh3;
       net_ipv4_tcp_fin_timeout = v_net_ipv4_tcp_fin_timeout;
       net_ipv4_tcp_keepalive_intvl = v_net_ipv4_tcp_keepalive_intvl;
       net_ipv4_tcp_keepalive_probes =
         v_net_ipv4_tcp_keepalive_probes;
       net_ipv4_tcp_keepalive_time = v_net_ipv4_tcp_keepalive_time;
       net_ipv4_tcp_max_syn_backlog = v_net_ipv4_tcp_max_syn_backlog;
       net_ipv4_tcp_max_tw_buckets = v_net_ipv4_tcp_max_tw_buckets;
       net_ipv4_tcp_tw_reuse = v_net_ipv4_tcp_tw_reuse;
       net_netfilter_nf_conntrack_buckets =
         v_net_netfilter_nf_conntrack_buckets;
       net_netfilter_nf_conntrack_max =
         v_net_netfilter_nf_conntrack_max;
       vm_max_map_count = v_vm_max_map_count;
       vm_swappiness = v_vm_swappiness;
       vm_vfs_cache_pressure = v_vm_vfs_cache_pressure;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_vm_vfs_cache_pressure with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_vfs_cache_pressure", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vm_swappiness with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_swappiness", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vm_max_map_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "vm_max_map_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_netfilter_nf_conntrack_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_netfilter_nf_conntrack_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_netfilter_nf_conntrack_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_netfilter_nf_conntrack_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_tw_reuse with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "net_ipv4_tcp_tw_reuse", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_max_tw_buckets with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_max_tw_buckets", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_max_syn_backlog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_max_syn_backlog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_time with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_time", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_probes with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_probes", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_keepalive_intvl with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_keepalive_intvl", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_tcp_fin_timeout with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_tcp_fin_timeout", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh3 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh3", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh2 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh2", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_neigh_default_gc_thresh1 with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_neigh_default_gc_thresh1", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_ip_local_port_range_min with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_ip_local_port_range_min", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_ipv4_ip_local_port_range_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_ipv4_ip_local_port_range_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_wmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_wmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_wmem_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_wmem_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_somaxconn with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_somaxconn", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_rmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_rmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_rmem_default with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_rmem_default", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_optmem_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_optmem_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_net_core_netdev_max_backlog with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "net_core_netdev_max_backlog", arg in
             bnd :: bnds
       in
       let bnds =
         match v_kernel_threads_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "kernel_threads_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_nr_open with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_nr_open", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_inotify_max_user_watches with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_inotify_max_user_watches", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_file_max with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_file_max", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fs_aio_max_nr with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "fs_aio_max_nr", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : linux_os_config__sysctl_config ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_os_config__sysctl_config

[@@@deriving.end]

type linux_os_config = {
  swap_file_size_mb : float prop option; [@option]
  transparent_huge_page_defrag : string prop option; [@option]
  transparent_huge_page_enabled : string prop option; [@option]
  sysctl_config : linux_os_config__sysctl_config list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : linux_os_config) -> ()

let yojson_of_linux_os_config =
  (function
   | {
       swap_file_size_mb = v_swap_file_size_mb;
       transparent_huge_page_defrag = v_transparent_huge_page_defrag;
       transparent_huge_page_enabled =
         v_transparent_huge_page_enabled;
       sysctl_config = v_sysctl_config;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_linux_os_config__sysctl_config
             v_sysctl_config
         in
         ("sysctl_config", arg) :: bnds
       in
       let bnds =
         match v_transparent_huge_page_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transparent_huge_page_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_transparent_huge_page_defrag with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "transparent_huge_page_defrag", arg in
             bnd :: bnds
       in
       let bnds =
         match v_swap_file_size_mb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "swap_file_size_mb", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : linux_os_config -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_linux_os_config

[@@@deriving.end]

type node_network_profile__allowed_host_ports = {
  port_end : float prop option; [@option]
  port_start : float prop option; [@option]
  protocol : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_network_profile__allowed_host_ports) -> ()

let yojson_of_node_network_profile__allowed_host_ports =
  (function
   | {
       port_end = v_port_end;
       port_start = v_port_start;
       protocol = v_protocol;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_protocol with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "protocol", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_start with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port_start", arg in
             bnd :: bnds
       in
       let bnds =
         match v_port_end with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "port_end", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_network_profile__allowed_host_ports ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_network_profile__allowed_host_ports

[@@@deriving.end]

type node_network_profile = {
  application_security_group_ids : string prop list option; [@option]
  node_public_ip_tags : (string * string prop) list option; [@option]
  allowed_host_ports : node_network_profile__allowed_host_ports list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : node_network_profile) -> ()

let yojson_of_node_network_profile =
  (function
   | {
       application_security_group_ids =
         v_application_security_group_ids;
       node_public_ip_tags = v_node_public_ip_tags;
       allowed_host_ports = v_allowed_host_ports;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list
             yojson_of_node_network_profile__allowed_host_ports
             v_allowed_host_ports
         in
         ("allowed_host_ports", arg) :: bnds
       in
       let bnds =
         match v_node_public_ip_tags with
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
             let bnd = "node_public_ip_tags", arg in
             bnd :: bnds
       in
       let bnds =
         match v_application_security_group_ids with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "application_security_group_ids", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : node_network_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_node_network_profile

[@@@deriving.end]

type timeouts = {
  create : string prop option; [@option]
  delete : string prop option; [@option]
  read : string prop option; [@option]
  update : string prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : timeouts) -> ()

let yojson_of_timeouts =
  (function
   | {
       create = v_create;
       delete = v_delete;
       read = v_read;
       update = v_update;
     } ->
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
         match v_read with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "read", arg in
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

type upgrade_settings = { max_surge : string prop }
[@@deriving_inline yojson_of]

let _ = fun (_ : upgrade_settings) -> ()

let yojson_of_upgrade_settings =
  (function
   | { max_surge = v_max_surge } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_max_surge in
         ("max_surge", arg) :: bnds
       in
       `Assoc bnds
    : upgrade_settings -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_upgrade_settings

[@@@deriving.end]

type windows_profile = {
  outbound_nat_enabled : bool prop option; [@option]
}
[@@deriving_inline yojson_of]

let _ = fun (_ : windows_profile) -> ()

let yojson_of_windows_profile =
  (function
   | { outbound_nat_enabled = v_outbound_nat_enabled } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         match v_outbound_nat_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "outbound_nat_enabled", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : windows_profile -> Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_windows_profile

[@@@deriving.end]

type azurerm_kubernetes_cluster_node_pool = {
  capacity_reservation_group_id : string prop option; [@option]
  custom_ca_trust_enabled : bool prop option; [@option]
  enable_auto_scaling : bool prop option; [@option]
  enable_host_encryption : bool prop option; [@option]
  enable_node_public_ip : bool prop option; [@option]
  eviction_policy : string prop option; [@option]
  fips_enabled : bool prop option; [@option]
  gpu_instance : string prop option; [@option]
  host_group_id : string prop option; [@option]
  id : string prop option; [@option]
  kubelet_disk_type : string prop option; [@option]
  kubernetes_cluster_id : string prop;
  max_count : float prop option; [@option]
  max_pods : float prop option; [@option]
  message_of_the_day : string prop option; [@option]
  min_count : float prop option; [@option]
  mode : string prop option; [@option]
  name : string prop;
  node_count : float prop option; [@option]
  node_labels : (string * string prop) list option; [@option]
  node_public_ip_prefix_id : string prop option; [@option]
  node_taints : string prop list option; [@option]
  orchestrator_version : string prop option; [@option]
  os_disk_size_gb : float prop option; [@option]
  os_disk_type : string prop option; [@option]
  os_sku : string prop option; [@option]
  os_type : string prop option; [@option]
  pod_subnet_id : string prop option; [@option]
  priority : string prop option; [@option]
  proximity_placement_group_id : string prop option; [@option]
  scale_down_mode : string prop option; [@option]
  snapshot_id : string prop option; [@option]
  spot_max_price : float prop option; [@option]
  tags : (string * string prop) list option; [@option]
  ultra_ssd_enabled : bool prop option; [@option]
  vm_size : string prop;
  vnet_subnet_id : string prop option; [@option]
  workload_runtime : string prop option; [@option]
  zones : string prop list option; [@option]
  kubelet_config : kubelet_config list;
  linux_os_config : linux_os_config list;
  node_network_profile : node_network_profile list;
  timeouts : timeouts option;
  upgrade_settings : upgrade_settings list;
  windows_profile : windows_profile list;
}
[@@deriving_inline yojson_of]

let _ = fun (_ : azurerm_kubernetes_cluster_node_pool) -> ()

let yojson_of_azurerm_kubernetes_cluster_node_pool =
  (function
   | {
       capacity_reservation_group_id =
         v_capacity_reservation_group_id;
       custom_ca_trust_enabled = v_custom_ca_trust_enabled;
       enable_auto_scaling = v_enable_auto_scaling;
       enable_host_encryption = v_enable_host_encryption;
       enable_node_public_ip = v_enable_node_public_ip;
       eviction_policy = v_eviction_policy;
       fips_enabled = v_fips_enabled;
       gpu_instance = v_gpu_instance;
       host_group_id = v_host_group_id;
       id = v_id;
       kubelet_disk_type = v_kubelet_disk_type;
       kubernetes_cluster_id = v_kubernetes_cluster_id;
       max_count = v_max_count;
       max_pods = v_max_pods;
       message_of_the_day = v_message_of_the_day;
       min_count = v_min_count;
       mode = v_mode;
       name = v_name;
       node_count = v_node_count;
       node_labels = v_node_labels;
       node_public_ip_prefix_id = v_node_public_ip_prefix_id;
       node_taints = v_node_taints;
       orchestrator_version = v_orchestrator_version;
       os_disk_size_gb = v_os_disk_size_gb;
       os_disk_type = v_os_disk_type;
       os_sku = v_os_sku;
       os_type = v_os_type;
       pod_subnet_id = v_pod_subnet_id;
       priority = v_priority;
       proximity_placement_group_id = v_proximity_placement_group_id;
       scale_down_mode = v_scale_down_mode;
       snapshot_id = v_snapshot_id;
       spot_max_price = v_spot_max_price;
       tags = v_tags;
       ultra_ssd_enabled = v_ultra_ssd_enabled;
       vm_size = v_vm_size;
       vnet_subnet_id = v_vnet_subnet_id;
       workload_runtime = v_workload_runtime;
       zones = v_zones;
       kubelet_config = v_kubelet_config;
       linux_os_config = v_linux_os_config;
       node_network_profile = v_node_network_profile;
       timeouts = v_timeouts;
       upgrade_settings = v_upgrade_settings;
       windows_profile = v_windows_profile;
     } ->
       let bnds : (string * Ppx_yojson_conv_lib.Yojson.Safe.t) list =
         []
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_windows_profile v_windows_profile
         in
         ("windows_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_upgrade_settings
             v_upgrade_settings
         in
         ("upgrade_settings", arg) :: bnds
       in
       let bnds =
         let arg = yojson_of_option yojson_of_timeouts v_timeouts in
         ("timeouts", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_node_network_profile
             v_node_network_profile
         in
         ("node_network_profile", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_linux_os_config v_linux_os_config
         in
         ("linux_os_config", arg) :: bnds
       in
       let bnds =
         let arg =
           yojson_of_list yojson_of_kubelet_config v_kubelet_config
         in
         ("kubelet_config", arg) :: bnds
       in
       let bnds =
         match v_zones with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "zones", arg in
             bnd :: bnds
       in
       let bnds =
         match v_workload_runtime with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "workload_runtime", arg in
             bnd :: bnds
       in
       let bnds =
         match v_vnet_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "vnet_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_vm_size in
         ("vm_size", arg) :: bnds
       in
       let bnds =
         match v_ultra_ssd_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "ultra_ssd_enabled", arg in
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
         match v_spot_max_price with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "spot_max_price", arg in
             bnd :: bnds
       in
       let bnds =
         match v_snapshot_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "snapshot_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_scale_down_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "scale_down_mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_proximity_placement_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "proximity_placement_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_priority with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "priority", arg in
             bnd :: bnds
       in
       let bnds =
         match v_pod_subnet_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "pod_subnet_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_sku with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_sku", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "os_disk_type", arg in
             bnd :: bnds
       in
       let bnds =
         match v_os_disk_size_gb with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "os_disk_size_gb", arg in
             bnd :: bnds
       in
       let bnds =
         match v_orchestrator_version with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "orchestrator_version", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_taints with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg =
               yojson_of_list (yojson_of_prop yojson_of_string) v
             in
             let bnd = "node_taints", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_public_ip_prefix_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "node_public_ip_prefix_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_labels with
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
             let bnd = "node_labels", arg in
             bnd :: bnds
       in
       let bnds =
         match v_node_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "node_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg = yojson_of_prop yojson_of_string v_name in
         ("name", arg) :: bnds
       in
       let bnds =
         match v_mode with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "mode", arg in
             bnd :: bnds
       in
       let bnds =
         match v_min_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "min_count", arg in
             bnd :: bnds
       in
       let bnds =
         match v_message_of_the_day with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "message_of_the_day", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_pods with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_pods", arg in
             bnd :: bnds
       in
       let bnds =
         match v_max_count with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_float v in
             let bnd = "max_count", arg in
             bnd :: bnds
       in
       let bnds =
         let arg =
           yojson_of_prop yojson_of_string v_kubernetes_cluster_id
         in
         ("kubernetes_cluster_id", arg) :: bnds
       in
       let bnds =
         match v_kubelet_disk_type with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "kubelet_disk_type", arg in
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
         match v_host_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "host_group_id", arg in
             bnd :: bnds
       in
       let bnds =
         match v_gpu_instance with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "gpu_instance", arg in
             bnd :: bnds
       in
       let bnds =
         match v_fips_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "fips_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_eviction_policy with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "eviction_policy", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_node_public_ip with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_node_public_ip", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_host_encryption with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_host_encryption", arg in
             bnd :: bnds
       in
       let bnds =
         match v_enable_auto_scaling with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "enable_auto_scaling", arg in
             bnd :: bnds
       in
       let bnds =
         match v_custom_ca_trust_enabled with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_bool v in
             let bnd = "custom_ca_trust_enabled", arg in
             bnd :: bnds
       in
       let bnds =
         match v_capacity_reservation_group_id with
         | Ppx_yojson_conv_lib.Option.None -> bnds
         | Ppx_yojson_conv_lib.Option.Some v ->
             let arg = yojson_of_prop yojson_of_string v in
             let bnd = "capacity_reservation_group_id", arg in
             bnd :: bnds
       in
       `Assoc bnds
    : azurerm_kubernetes_cluster_node_pool ->
      Ppx_yojson_conv_lib.Yojson.Safe.t)

let _ = yojson_of_azurerm_kubernetes_cluster_node_pool

[@@@deriving.end]

let kubelet_config ?allowed_unsafe_sysctls ?container_log_max_line
    ?container_log_max_size_mb ?cpu_cfs_quota_enabled
    ?cpu_cfs_quota_period ?cpu_manager_policy
    ?image_gc_high_threshold ?image_gc_low_threshold ?pod_max_pid
    ?topology_manager_policy () : kubelet_config =
  {
    allowed_unsafe_sysctls;
    container_log_max_line;
    container_log_max_size_mb;
    cpu_cfs_quota_enabled;
    cpu_cfs_quota_period;
    cpu_manager_policy;
    image_gc_high_threshold;
    image_gc_low_threshold;
    pod_max_pid;
    topology_manager_policy;
  }

let linux_os_config__sysctl_config ?fs_aio_max_nr ?fs_file_max
    ?fs_inotify_max_user_watches ?fs_nr_open ?kernel_threads_max
    ?net_core_netdev_max_backlog ?net_core_optmem_max
    ?net_core_rmem_default ?net_core_rmem_max ?net_core_somaxconn
    ?net_core_wmem_default ?net_core_wmem_max
    ?net_ipv4_ip_local_port_range_max
    ?net_ipv4_ip_local_port_range_min
    ?net_ipv4_neigh_default_gc_thresh1
    ?net_ipv4_neigh_default_gc_thresh2
    ?net_ipv4_neigh_default_gc_thresh3 ?net_ipv4_tcp_fin_timeout
    ?net_ipv4_tcp_keepalive_intvl ?net_ipv4_tcp_keepalive_probes
    ?net_ipv4_tcp_keepalive_time ?net_ipv4_tcp_max_syn_backlog
    ?net_ipv4_tcp_max_tw_buckets ?net_ipv4_tcp_tw_reuse
    ?net_netfilter_nf_conntrack_buckets
    ?net_netfilter_nf_conntrack_max ?vm_max_map_count ?vm_swappiness
    ?vm_vfs_cache_pressure () : linux_os_config__sysctl_config =
  {
    fs_aio_max_nr;
    fs_file_max;
    fs_inotify_max_user_watches;
    fs_nr_open;
    kernel_threads_max;
    net_core_netdev_max_backlog;
    net_core_optmem_max;
    net_core_rmem_default;
    net_core_rmem_max;
    net_core_somaxconn;
    net_core_wmem_default;
    net_core_wmem_max;
    net_ipv4_ip_local_port_range_max;
    net_ipv4_ip_local_port_range_min;
    net_ipv4_neigh_default_gc_thresh1;
    net_ipv4_neigh_default_gc_thresh2;
    net_ipv4_neigh_default_gc_thresh3;
    net_ipv4_tcp_fin_timeout;
    net_ipv4_tcp_keepalive_intvl;
    net_ipv4_tcp_keepalive_probes;
    net_ipv4_tcp_keepalive_time;
    net_ipv4_tcp_max_syn_backlog;
    net_ipv4_tcp_max_tw_buckets;
    net_ipv4_tcp_tw_reuse;
    net_netfilter_nf_conntrack_buckets;
    net_netfilter_nf_conntrack_max;
    vm_max_map_count;
    vm_swappiness;
    vm_vfs_cache_pressure;
  }

let linux_os_config ?swap_file_size_mb ?transparent_huge_page_defrag
    ?transparent_huge_page_enabled ?(sysctl_config = []) () :
    linux_os_config =
  {
    swap_file_size_mb;
    transparent_huge_page_defrag;
    transparent_huge_page_enabled;
    sysctl_config;
  }

let node_network_profile__allowed_host_ports ?port_end ?port_start
    ?protocol () : node_network_profile__allowed_host_ports =
  { port_end; port_start; protocol }

let node_network_profile ?application_security_group_ids
    ?node_public_ip_tags ?(allowed_host_ports = []) () :
    node_network_profile =
  {
    application_security_group_ids;
    node_public_ip_tags;
    allowed_host_ports;
  }

let timeouts ?create ?delete ?read ?update () : timeouts =
  { create; delete; read; update }

let upgrade_settings ~max_surge () : upgrade_settings = { max_surge }

let windows_profile ?outbound_nat_enabled () : windows_profile =
  { outbound_nat_enabled }

let azurerm_kubernetes_cluster_node_pool
    ?capacity_reservation_group_id ?custom_ca_trust_enabled
    ?enable_auto_scaling ?enable_host_encryption
    ?enable_node_public_ip ?eviction_policy ?fips_enabled
    ?gpu_instance ?host_group_id ?id ?kubelet_disk_type ?max_count
    ?max_pods ?message_of_the_day ?min_count ?mode ?node_count
    ?node_labels ?node_public_ip_prefix_id ?node_taints
    ?orchestrator_version ?os_disk_size_gb ?os_disk_type ?os_sku
    ?os_type ?pod_subnet_id ?priority ?proximity_placement_group_id
    ?scale_down_mode ?snapshot_id ?spot_max_price ?tags
    ?ultra_ssd_enabled ?vnet_subnet_id ?workload_runtime ?zones
    ?(kubelet_config = []) ?(linux_os_config = [])
    ?(node_network_profile = []) ?timeouts ?(upgrade_settings = [])
    ?(windows_profile = []) ~kubernetes_cluster_id ~name ~vm_size ()
    : azurerm_kubernetes_cluster_node_pool =
  {
    capacity_reservation_group_id;
    custom_ca_trust_enabled;
    enable_auto_scaling;
    enable_host_encryption;
    enable_node_public_ip;
    eviction_policy;
    fips_enabled;
    gpu_instance;
    host_group_id;
    id;
    kubelet_disk_type;
    kubernetes_cluster_id;
    max_count;
    max_pods;
    message_of_the_day;
    min_count;
    mode;
    name;
    node_count;
    node_labels;
    node_public_ip_prefix_id;
    node_taints;
    orchestrator_version;
    os_disk_size_gb;
    os_disk_type;
    os_sku;
    os_type;
    pod_subnet_id;
    priority;
    proximity_placement_group_id;
    scale_down_mode;
    snapshot_id;
    spot_max_price;
    tags;
    ultra_ssd_enabled;
    vm_size;
    vnet_subnet_id;
    workload_runtime;
    zones;
    kubelet_config;
    linux_os_config;
    node_network_profile;
    timeouts;
    upgrade_settings;
    windows_profile;
  }

type t = {
  tf_name : string;
  capacity_reservation_group_id : string prop;
  custom_ca_trust_enabled : bool prop;
  enable_auto_scaling : bool prop;
  enable_host_encryption : bool prop;
  enable_node_public_ip : bool prop;
  eviction_policy : string prop;
  fips_enabled : bool prop;
  gpu_instance : string prop;
  host_group_id : string prop;
  id : string prop;
  kubelet_disk_type : string prop;
  kubernetes_cluster_id : string prop;
  max_count : float prop;
  max_pods : float prop;
  message_of_the_day : string prop;
  min_count : float prop;
  mode : string prop;
  name : string prop;
  node_count : float prop;
  node_labels : (string * string) list prop;
  node_public_ip_prefix_id : string prop;
  node_taints : string list prop;
  orchestrator_version : string prop;
  os_disk_size_gb : float prop;
  os_disk_type : string prop;
  os_sku : string prop;
  os_type : string prop;
  pod_subnet_id : string prop;
  priority : string prop;
  proximity_placement_group_id : string prop;
  scale_down_mode : string prop;
  snapshot_id : string prop;
  spot_max_price : float prop;
  tags : (string * string) list prop;
  ultra_ssd_enabled : bool prop;
  vm_size : string prop;
  vnet_subnet_id : string prop;
  workload_runtime : string prop;
  zones : string list prop;
}

let make ?capacity_reservation_group_id ?custom_ca_trust_enabled
    ?enable_auto_scaling ?enable_host_encryption
    ?enable_node_public_ip ?eviction_policy ?fips_enabled
    ?gpu_instance ?host_group_id ?id ?kubelet_disk_type ?max_count
    ?max_pods ?message_of_the_day ?min_count ?mode ?node_count
    ?node_labels ?node_public_ip_prefix_id ?node_taints
    ?orchestrator_version ?os_disk_size_gb ?os_disk_type ?os_sku
    ?os_type ?pod_subnet_id ?priority ?proximity_placement_group_id
    ?scale_down_mode ?snapshot_id ?spot_max_price ?tags
    ?ultra_ssd_enabled ?vnet_subnet_id ?workload_runtime ?zones
    ?(kubelet_config = []) ?(linux_os_config = [])
    ?(node_network_profile = []) ?timeouts ?(upgrade_settings = [])
    ?(windows_profile = []) ~kubernetes_cluster_id ~name ~vm_size
    __id =
  let __type = "azurerm_kubernetes_cluster_node_pool" in
  let __attrs =
    ({
       tf_name = __id;
       capacity_reservation_group_id =
         Prop.computed __type __id "capacity_reservation_group_id";
       custom_ca_trust_enabled =
         Prop.computed __type __id "custom_ca_trust_enabled";
       enable_auto_scaling =
         Prop.computed __type __id "enable_auto_scaling";
       enable_host_encryption =
         Prop.computed __type __id "enable_host_encryption";
       enable_node_public_ip =
         Prop.computed __type __id "enable_node_public_ip";
       eviction_policy = Prop.computed __type __id "eviction_policy";
       fips_enabled = Prop.computed __type __id "fips_enabled";
       gpu_instance = Prop.computed __type __id "gpu_instance";
       host_group_id = Prop.computed __type __id "host_group_id";
       id = Prop.computed __type __id "id";
       kubelet_disk_type =
         Prop.computed __type __id "kubelet_disk_type";
       kubernetes_cluster_id =
         Prop.computed __type __id "kubernetes_cluster_id";
       max_count = Prop.computed __type __id "max_count";
       max_pods = Prop.computed __type __id "max_pods";
       message_of_the_day =
         Prop.computed __type __id "message_of_the_day";
       min_count = Prop.computed __type __id "min_count";
       mode = Prop.computed __type __id "mode";
       name = Prop.computed __type __id "name";
       node_count = Prop.computed __type __id "node_count";
       node_labels = Prop.computed __type __id "node_labels";
       node_public_ip_prefix_id =
         Prop.computed __type __id "node_public_ip_prefix_id";
       node_taints = Prop.computed __type __id "node_taints";
       orchestrator_version =
         Prop.computed __type __id "orchestrator_version";
       os_disk_size_gb = Prop.computed __type __id "os_disk_size_gb";
       os_disk_type = Prop.computed __type __id "os_disk_type";
       os_sku = Prop.computed __type __id "os_sku";
       os_type = Prop.computed __type __id "os_type";
       pod_subnet_id = Prop.computed __type __id "pod_subnet_id";
       priority = Prop.computed __type __id "priority";
       proximity_placement_group_id =
         Prop.computed __type __id "proximity_placement_group_id";
       scale_down_mode = Prop.computed __type __id "scale_down_mode";
       snapshot_id = Prop.computed __type __id "snapshot_id";
       spot_max_price = Prop.computed __type __id "spot_max_price";
       tags = Prop.computed __type __id "tags";
       ultra_ssd_enabled =
         Prop.computed __type __id "ultra_ssd_enabled";
       vm_size = Prop.computed __type __id "vm_size";
       vnet_subnet_id = Prop.computed __type __id "vnet_subnet_id";
       workload_runtime =
         Prop.computed __type __id "workload_runtime";
       zones = Prop.computed __type __id "zones";
     }
      : t)
  in
  {
    Tf_core.id = __id;
    type_ = __type;
    json =
      yojson_of_azurerm_kubernetes_cluster_node_pool
        (azurerm_kubernetes_cluster_node_pool
           ?capacity_reservation_group_id ?custom_ca_trust_enabled
           ?enable_auto_scaling ?enable_host_encryption
           ?enable_node_public_ip ?eviction_policy ?fips_enabled
           ?gpu_instance ?host_group_id ?id ?kubelet_disk_type
           ?max_count ?max_pods ?message_of_the_day ?min_count ?mode
           ?node_count ?node_labels ?node_public_ip_prefix_id
           ?node_taints ?orchestrator_version ?os_disk_size_gb
           ?os_disk_type ?os_sku ?os_type ?pod_subnet_id ?priority
           ?proximity_placement_group_id ?scale_down_mode
           ?snapshot_id ?spot_max_price ?tags ?ultra_ssd_enabled
           ?vnet_subnet_id ?workload_runtime ?zones ~kubelet_config
           ~linux_os_config ~node_network_profile ?timeouts
           ~upgrade_settings ~windows_profile ~kubernetes_cluster_id
           ~name ~vm_size ());
    attrs = __attrs;
  }

let register ?tf_module ?capacity_reservation_group_id
    ?custom_ca_trust_enabled ?enable_auto_scaling
    ?enable_host_encryption ?enable_node_public_ip ?eviction_policy
    ?fips_enabled ?gpu_instance ?host_group_id ?id ?kubelet_disk_type
    ?max_count ?max_pods ?message_of_the_day ?min_count ?mode
    ?node_count ?node_labels ?node_public_ip_prefix_id ?node_taints
    ?orchestrator_version ?os_disk_size_gb ?os_disk_type ?os_sku
    ?os_type ?pod_subnet_id ?priority ?proximity_placement_group_id
    ?scale_down_mode ?snapshot_id ?spot_max_price ?tags
    ?ultra_ssd_enabled ?vnet_subnet_id ?workload_runtime ?zones
    ?(kubelet_config = []) ?(linux_os_config = [])
    ?(node_network_profile = []) ?timeouts ?(upgrade_settings = [])
    ?(windows_profile = []) ~kubernetes_cluster_id ~name ~vm_size
    __id =
  let (r : _ Tf_core.resource) =
    make ?capacity_reservation_group_id ?custom_ca_trust_enabled
      ?enable_auto_scaling ?enable_host_encryption
      ?enable_node_public_ip ?eviction_policy ?fips_enabled
      ?gpu_instance ?host_group_id ?id ?kubelet_disk_type ?max_count
      ?max_pods ?message_of_the_day ?min_count ?mode ?node_count
      ?node_labels ?node_public_ip_prefix_id ?node_taints
      ?orchestrator_version ?os_disk_size_gb ?os_disk_type ?os_sku
      ?os_type ?pod_subnet_id ?priority ?proximity_placement_group_id
      ?scale_down_mode ?snapshot_id ?spot_max_price ?tags
      ?ultra_ssd_enabled ?vnet_subnet_id ?workload_runtime ?zones
      ~kubelet_config ~linux_os_config ~node_network_profile
      ?timeouts ~upgrade_settings ~windows_profile
      ~kubernetes_cluster_id ~name ~vm_size __id
  in
  Resource.add ?tf_module ~type_:r.type_ ~id:r.id r.json;
  r.attrs
