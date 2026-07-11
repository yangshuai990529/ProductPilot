# 示例 - 账号注销接口系统需求规格书 (SR Example)

## 1. 架构拓扑
```mermaid
graph LR
  Client[TV Client] -->|HTTPS| Gateway[API Gateway]
  Gateway -->|gRPC| AuthService[Auth Microservice]
  AuthService -->|SQL| DB[(User DB)]
```

## 2. 接口契约 (API Contract)

### 接口 ID: `API-AUTH-049`
* **接口名称**: 用户自主注销账号
* **请求路径**: `POST /api/v1/user/unregister`
* **通信协议**: HTTPS

#### 请求头 (Request Headers)
* `Authorization`: `Bearer eyJhbGciOiJIUzI1NiIsIn...` (用户 JWT 认证令牌)

#### 请求参数 (Request Body)
```json
{
  "verificationCode": "683012",
  "reason": "不再需要该服务"
}
```

#### 正常响应参数 (Response Body) - HTTP Status 200
```json
{
  "code": 200,
  "message": "注销成功，账号已冻结",
  "data": {
    "userId": "usr_9f82d3810a72",
    "coolingPeriodDays": 15
  }
}
```

#### 异常响应参数 (Response Body) - HTTP Status 400
```json
{
  "code": 40012,
  "message": "验证码失效或不正确"
}
```

## 3. 非功能性指标与依赖
* **接口安全**: 该接口必须部署防暴力破解（Rate Limiting）拦截器。同一 IP 每分钟请求上线注销不能超过 3 次。
* **数据加密**: 数据库中的注销用户敏感信息（如手机号、真实姓名）必须在 15 天冷却期结束后，通过哈希算法进行物理遮蔽（Masking）。
